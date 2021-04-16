## creating a provider
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


## storing multiple providers in a list
    List<SingleChildWidget> providers = [
        ChangeNotifierProvider(create: (context) => TodosModel()),
    ];

## using multiple providers at application root
    void main() {
    runApp(MyAPP());
    }

    class MyAPP extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MultiProvider(
                providers: providers,
                child: MaterialApp(
                    title: 'Flutter fundamentals',
                    theme: ThemeData(
                        brightness: Brightness.dark,
                        primaryColor: DSColors.Primary,
                        accentColor: DSColors.Secondary,
                        fontFamily: 'Montserrat',
                    ),
                    initialRoute: RoutePaths.home,
                    onGenerateRoute: MyRouter.generateRoute,
                ),
            );
        }
    }

## accessing provider data
    class ExampleWidget extends StatefulWidget {
        @override
        _ExampleWidgetState createState() => _ExampleWidgetState();
    }

    class _ExampleWidgetState extends State<ExampleWidget>
    with SingleTickerProviderStateMixin {
        ...
        onChanged: (bool checked) {
          Provider.of<TodosModel>(context, listen: false).toggleTodo(task);
        },
        ...
        Consumer<TodosModel>(
            builder: (context, todos, child) => _TaskList(
              tasks: todos.allTasks,
            ),
        ),
        ...
    }