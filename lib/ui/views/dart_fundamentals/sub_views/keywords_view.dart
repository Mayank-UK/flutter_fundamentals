import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

class KeywordsView extends StatelessWidget {
  final String _appBarTitle = 'Keywords';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Keywords',
              content: [
                TextBlockComponent(
                  'Keywords are the words which have special meaning in a language.',
                ),
                ContentGroupWrapperComponent(
                  title: 'Keyword list',
                  content: [
                    TextBlockComponent(
                      'abstract\nas\nassert\nasync\nawait\nbreak\ncase\ncatch\nclass\nconst\ncontinue\ncovariant\ndefault\ndeferred\ndo\ndynamic\nelse\nenum\nexport\nextends\nextension\nexternal\nfactory\nfalse\nfinal\nfinally\nfor\nFunction\nget\nget\nhide\nimplements\nimport\nin\ninterface\nis\nlibrary\nmixin\nnew\nnull\non\noperator\npart\nrethrow\nreturn\nset\nshow\nstatic\nsuper\nswitch\nasync\nthis\nthrow\ntrue\ntry\ntypedef\nvar\nvoid\nwhile\nwith\nyield',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
