    DataTable(
        columns: const <DataColumn>[
            DataColumn(
                label: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                ),
            ),
            DataColumn(
                label: Text(
                    'Age',
                    style: TextStyle(fontStyle: FontStyle.italic),
                ),
            ),
            DataColumn(
                label: Text(
                    'Role',
                    style: TextStyle(fontStyle: FontStyle.italic),
                ),
            ),
        ],
        rows: const <DataRow>[
            DataRow(
                cells: <DataCell>[
                    DataCell(const Text('Sarah')),
                    DataCell(const Text('19')),
                    DataCell(const Text('Student')),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                    DataCell(const Text('Janine')),
                    DataCell(const Text('43')),
                    DataCell(const Text('Professor')),
                ],
            ),
            DataRow(
                cells: <DataCell>[
                    DataCell(const Text('William')),
                    DataCell(const Text('27')),
                    DataCell(const Text('Associate Professor')),
                ],
            ),
        ],
    ),