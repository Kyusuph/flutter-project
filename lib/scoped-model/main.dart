import 'package:scoped_model/scoped_model.dart';

import './products.dart';
import './settings.dart';
import './auth.dart';

class MainModel extends Model with ProductsModel, AppSettingModel, AuthModel{}