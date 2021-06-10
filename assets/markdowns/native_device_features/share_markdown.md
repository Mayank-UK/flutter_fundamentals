# using share_plus package 
    class _ShareImplementation extends StatelessWidget {
        void _onTapShare() {
            Share.share('test string');
        }

        

        @override
        Widget build(BuildContext context) {
            return  Container(
                child: ElevatedButton(
                    onPressed: _onTapWhatsapp,
                    child: Text('Share to whatsapp'),
                ),
            );
        }
    } 

# using url_launcher package
    class _ShareImplementation extends StatelessWidget {
        void _onTapWhatsapp() async {
            String whatsappUrl = 'https://api.whatsapp.com/send?text=\'test string\'';

            await launch(whatsappUrl);
        }

        @override
        Widget build(BuildContext context) {
            return Container(
                child: ElevatedButton(
                    onPressed: _onTapWhatsapp,
                    child: Text('Share to whatsapp'),
                ),
            ),
                
        };
    }