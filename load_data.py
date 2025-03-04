import argparse
import datetime as dt
import logging
import os
import pandas as pd
import simplejson as json
import dateutil.parser
from typing import List

default_data_dir = "/Users/varshithgowdak/Desktop/SDOBenchmarkFiles/archive/SDOBenchmark_example"

DEFAULT_ARGS = {
    "start": dt.datetime(2012, 1, 1),
    "end": dt.datetime(2018, 1, 1),
    "input_hours": 12,
    "output_hours": 24,
    "time_steps": [0, 7 * 60, 10 * 60 + 30, 11 * 60 + 50],
    "seed": 726527
}

TEST_ARGS = {
    "start": dt.datetime(2017, 9, 1),
    "end": dt.datetime(2017, 9, 10),
    "input_hours": 12,
    "output_hours": 24,
    "time_steps": [0, 60, 120],
    "seed": 726527
}

logger = logging.getLogger(__name__)


def load_raw(output_directory: str, start: dt.datetime, end: dt.datetime):
    """
    Load raw data from the local SDOBenchmark dataset instead of NOAA.

    Args:
        output_directory (str): Directory to save raw data
        start (dt.datetime): Start date
        end (dt.datetime): End date
    """
    logger.info("Loading raw data from local dataset")

    if not os.path.isdir(output_directory):
        logger.info("Creating output directory %s", output_directory)
        os.makedirs(output_directory, exist_ok=True)

    test_dir = os.path.join(default_data_dir, "test")
    training_dir = os.path.join(default_data_dir, "training")

    if not os.path.exists(test_dir) or not os.path.exists(training_dir):
        logger.error("Test or training data directories not found!")
        return

    test_files = [os.path.join(test_dir, f) for f in os.listdir(test_dir) if f.endswith('.csv')]
    training_files = [os.path.join(training_dir, f) for f in os.listdir(training_dir) if f.endswith('.csv')]

    test_data = [pd.read_csv(file) for file in test_files]
    training_data = [pd.read_csv(file) for file in training_files]

    logger.info("Loaded %d test files and %d training files", len(test_data), len(training_data))


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "directory", default=default_data_dir, help="Directory containing local dataset"
    )
    parser.add_argument(
        "email", help="Registered JSOC email address for image download"
    )
    parser.add_argument(
        "--fitsdir", help="Output directory for FITS files. Optionally different than 'directory'."
    )
    parser.add_argument(
        "--start", default=DEFAULT_ARGS["start"], type=dateutil.parser.parse, help="First date and time (inclusive)"
    )
    parser.add_argument(
        "--end", default=DEFAULT_ARGS["end"], type=dateutil.parser.parse, help="Last date and time (exclusive)"
    )
    parser.add_argument(
        "--input-hours", default=DEFAULT_ARGS["input_hours"], type=int, help="Number of hours for input"
    )
    parser.add_argument(
        "--output-hours", default=DEFAULT_ARGS["output_hours"], type=int, help="Number of hours for output"
    )
    parser.add_argument(
        "--time_steps", default=DEFAULT_ARGS["time_steps"], type=int, nargs='+',
        help="Input image time stamps after input start"
    )
    parser.add_argument(
        "--seed", default=DEFAULT_ARGS["seed"], type=int, help="Seed which is used for test/training sampling"
    )
    parser.add_argument(
        "--debug", action="store_true", help="Enable debug logging"
    )
    parser.add_argument(
        "--test", action="store_true", help="Use test configuration with limited date range"
    )

    args = parser.parse_args()

    if args.test:
        args.start = TEST_ARGS["start"]
        args.end = TEST_ARGS["end"]
        args.input_hours = TEST_ARGS["input_hours"]
        args.output_hours = TEST_ARGS["output_hours"]
        args.time_steps = TEST_ARGS["time_steps"]
        args.seed = TEST_ARGS["seed"]

    return args


def main():
    args = parse_args()
    log_level = logging.DEBUG if args.debug else logging.INFO
    logging.basicConfig(level=log_level)

    logger.info("Starting local data processing")
    load_raw(args.directory, args.start, args.end)

    logger.info("Processing complete")


if __name__ == "__main__":
    main()
