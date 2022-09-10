import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopee_clone/modules/language/bloc/language_bloc.dart';
import 'package:shopee_clone/modules/language/views/language_row_item.dart';
class LanguageDialog extends StatefulWidget {
  const LanguageDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<LanguageDialog> createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<LanguageBloc>(context)
          .add(LanguageEventChanged(context.locale.toString()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      insetPadding: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Text(
                  'language.select_language',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 18),
                ).tr(),
                const Divider(
                  thickness: 1,
                  color: Color(0xffCDCDCD),
                ),
                LanguageRowItem(
                  title: 'language.thai'.tr(),
                  value: 'th',
                  groupValue: state.language,
                  onChanged: (val) => BlocProvider.of<LanguageBloc>(context)
                      .add(LanguageEventChanged(val)),
                ),
                LanguageRowItem(
                  title: 'language.english'.tr(),
                  value: 'en',
                  groupValue: state.language,
                  onChanged: (val) => BlocProvider.of<LanguageBloc>(context)
                      .add(LanguageEventChanged(val)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'common.cancel'.tr(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          context.setLocale(Locale(state.language, ''));
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'common.ok'.tr(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
