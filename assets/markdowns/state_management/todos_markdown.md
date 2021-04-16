## model
    class Task {
        final String title;
        bool completed;

        Task({@required this.title, this.completed = false});

        void toggleCompleted() {
            completed = !completed;
        }
    }

## provider
    class TodosModel extends ChangeNotifier {
        final List<Task> _tasks = [
            Task(title: 'Finish the app'),
            Task(title: 'Write a blog post'),
            Task(title: 'Share with community'),
        ];

        UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_tasks);
        UnmodifiableListView<Task> get incompleteTasks =>
            UnmodifiableListView(_tasks.where((todo) => !todo.completed));
        UnmodifiableListView<Task> get completedTasks =>
            UnmodifiableListView(_tasks.where((todo) => todo.completed));

        void addTodo(Task task) {
            _tasks.add(task);
            notifyListeners();
        }

        void toggleTodo(Task task) {
            final taskIndex = _tasks.indexOf(task);
            _tasks[taskIndex].toggleCompleted();
            notifyListeners();
        }

        void deleteTodo(Task task) {
            _tasks.remove(task);
            notifyListeners();
        }
    }

## application
    class TodosAppView extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return ChangeNotifierProvider(
                create: (context) => TodosModel(),
                child: MaterialApp(
                    title: 'Todos',
                    home: _HomeScreen(),
                ),
            );
        }
    }

    class _HomeScreen extends StatefulWidget {
        @override
        _HomeScreenState createState() => _HomeScreenState();
    }

    class _HomeScreenState extends State<_HomeScreen>
        with SingleTickerProviderStateMixin {
        TabController controller;

        @override
        void initState() {
            super.initState();
            controller = TabController(
                length: 4,
                vsync: this,
            );
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: const Text('Todos app example'),
                    leading: new IconButton(
                        icon: new Icon(Icons.arrow_back),
                        onPressed: () {
                            Navigator.pop(context);
                        },
                    ),
                    actions: <Widget>[
                        IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => _AddTaskScreen(),
                                    ),
                                );
                            },
                        ),
                    ],
                    bottom: TabBar(
                        controller: controller,
                        tabs: <Widget>[
                            Tab(text: 'All'),
                            Tab(text: 'Incomplete'),
                            Tab(text: 'Complete'),
                            Tab(text: 'Code'),
                        ],
                    ),
                ),
                body: TabBarView(
                    controller: controller,
                    children: <Widget>[
                        _AllTasksTab(),
                        _IncompleteTasksTab(),
                        _CompletedTasksTab(),
                        _TodosCode(),
                    ],
                ),
            );
        }
    }

    class _TaskListItem extends StatelessWidget {
        final Task task;

        _TaskListItem({@required this.task});

        @override
        Widget build(BuildContext context) {
            return ListTile(
                leading: Checkbox(
                    value: task.completed,
                    onChanged: (bool checked) {
                    Provider.of<TodosModel>(context, listen: false).toggleTodo(task);
                    },
                ),
                title: Text(task.title),
                trailing: IconButton(
                    icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                    ),
                    onPressed: () {
                    Provider.of<TodosModel>(context, listen: false).deleteTodo(task);
                    },
                ),
            );
        }
    }

    class _TaskList extends StatelessWidget {
        final List<Task> tasks;

        _TaskList({@required this.tasks});

        @override
        Widget build(BuildContext context) {
            return ListView(
               children: getChildrenTasks(),
            );
        }

        List<Widget> getChildrenTasks() {
            return tasks.map((todo) => _TaskListItem(task: todo)).toList();
        }
    }

    class _AllTasksTab extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Container(
                child: Consumer<TodosModel>(
                    builder: (context, todos, child) => _TaskList(
                    tasks: todos.allTasks,
                    ),
                ),
            );
        }
    }

    class _IncompleteTasksTab extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Container(
                child: Consumer<TodosModel>(
                    builder: (context, todos, child) => _TaskList(
                    tasks: todos.incompleteTasks,
                    ),
                ),
            );
        }
    }

    class _CompletedTasksTab extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Container(
            child: Consumer<TodosModel>(
                builder: (context, todos, child) => _TaskList(
                tasks: todos.completedTasks,
                ),
            ),
            );
        }
    }

    class _TodosCode extends StatelessWidget {
        String _markdownLocation =
            'assets/markdowns/state_management/todos_markdown.md';

        @override
        Widget build(BuildContext context) {
            return MarkdownPreviewComponent(
               markdownLocation: this._markdownLocation,
            );
        }
    }

    class _AddTaskScreen extends StatefulWidget {
        @override
        _AddTaskScreenState createState() => _AddTaskScreenState();
    }

    class _AddTaskScreenState extends State<_AddTaskScreen> {
        final taskTitleController = TextEditingController();
        bool completedStatus = false;

        @override
        void dispose() {
            taskTitleController.dispose();
            super.dispose();
        }

        void onAdd() {
            final String textVal = taskTitleController.text;
            final bool completed = completedStatus;
            if (textVal.isNotEmpty) {
            final Task todo = Task(
                title: textVal,
                completed: completed,
            );
            Provider.of<TodosModel>(context, listen: false).addTodo(todo);
            Navigator.pop(context);
            }
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(
                    title: const Text('Add Task'),
                ),
                body: ListView(
                    children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Container(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                        TextField(controller: taskTitleController),
                                        CheckboxListTile(
                                            value: completedStatus,
                                            onChanged: (checked) => setState(() {
                                            completedStatus = checked;
                                            }),
                                            title: const Text('Complete?'),
                                        ),
                                        ElevatedButton(
                                            child: const Text('Add'),
                                            onPressed: onAdd,
                                        ),
                                    ],
                                ),
                            ),
                        )
                    ],
                ),
            );
        }
    }