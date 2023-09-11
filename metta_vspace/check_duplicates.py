import pandas as pd
import sys

def check_for_duplicates(filename):
    try:
        # Read the TSV file into a Pandas DataFrame
        df = pd.read_csv(filename, delimiter='\t', comment="#" )
        
        # Initialize an empty list to store columns with no duplicates
        columns_with_no_duplicates = []
        
        # Check each column for duplicate rows
        for column in df.columns:
            if not df[column].duplicated().any():
                columns_with_no_duplicates.append(column)
        
        # Print the result
        if columns_with_no_duplicates:
            print(f"The following columns in {filename} have no duplicates:")
            print(", ".join(columns_with_no_duplicates))
        else:
            print(f"All columns in {filename} have duplicates.")
    
    except FileNotFoundError:
        print(f"The file {filename} was not found.")
    except pd.errors.EmptyDataError:
        print(f"The file {filename} is empty.")
    except pd.errors.ParserError as e:
        print(f"Could not parse {filename}. Make sure it's a valid TSV file. {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python check_duplicates.py <filename>")
    else:
        filename = sys.argv[1]
        check_for_duplicates(filename)

