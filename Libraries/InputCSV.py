import csv


def read_CSV_file(filename):
    csv_rows = []
    with open(filename) as csvfile:
        reader = csv.reader(csvfile)
        for rows in reader:
            csv_rows.append(rows)
    return csv_rows
