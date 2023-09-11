import pandas as pd
import sys

def check_for_duplicates(filename):
    try:
        # Read the TSV file into a Pandas DataFrame, skipping lines starting with '#'
        df = pd.read_csv(filename, delimiter='\t', comment="#", dtype=str )

        # Initialize an empty list to store columns with no duplicates
        columns_with_no_duplicates = []

        # Check each column for duplicate rows and collect column numbers
        for idx, column in enumerate(df.columns):
            if not df[column].duplicated().any():
                columns_with_no_duplicates.append(f'({idx+1} "{column}")')

        # Print the result
        if columns_with_no_duplicates:
            print(f'(unique-columns "{filename}" {" ".join(columns_with_no_duplicates)})')
        else:
            print(f'(unique-columns "{filename}" ())')

    except FileNotFoundError:
        print(f'(unique-columns "{filename}" ())  ; File was not found.')
    except pd.errors.EmptyDataError:
        print(f'(unique-columns "{filename}" ())  ; File is empty.')
    except pd.errors.ParserError as e:
        print(f'(unique-columns "{filename}" ())  ; Could not parse file: {e}')
    except Exception as e:
        print(f'(unique-columns "{filename}" ())  ; An unexpected error occurred: {e}')

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print('Usage: python check_duplicates.py <filename>')
    else:
        filename = sys.argv[1]
        check_for_duplicates(filename)

