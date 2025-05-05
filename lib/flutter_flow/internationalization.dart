import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Main
  {
    'twyzwm99': {
      'es': 'Buscar...',
      'en': '',
    },
    'uhyhzzbq': {
      'es': 'Servicios',
      'en': '',
    },
    'h56xht4r': {
      'es': 'Productos',
      'en': '',
    },
    'cgm54j8h': {
      'es': 'Agendar una Cita',
      'en': '',
    },
    'e5u337mf': {
      'es': 'Promos',
      'en': '',
    },
    'ppfdn2jg': {
      'es': 'Mis Vehiculos',
      'en': '',
    },
    '89lwmcp8': {
      'es': 'Estado',
      'en': '',
    },
    'm4umtr3s': {
      'es': 'Detalles del trabajo que se le esta haciendo al vehiculo.',
      'en': '',
    },
    'ie5rj6w8': {
      'es': 'Mis Citas',
      'en': '',
    },
    '2vllm658': {
      'es': 'En Progreso',
      'en': '',
    },
    'zqr9ztkx': {
      'es': 'Fecha',
      'en': '',
    },
    'hsgl23xx': {
      'es': 'En Progreso',
      'en': '',
    },
    'c4sksnvs': {
      'es': 'Recibidas',
      'en': '',
    },
    '1sekm5mg': {
      'es': 'Fecha',
      'en': '',
    },
    '8y9fhfik': {
      'es': 'Ingresado',
      'en': '',
    },
    '5081trhf': {
      'es': 'Cancelar',
      'en': '',
    },
    'w90zdwyl': {
      'es': 'Completadas',
      'en': '',
    },
    'itjm7iol': {
      'es': 'Completado',
      'en': '',
    },
    'irjngsce': {
      'es': 'Design Template Screens',
      'en': '',
    },
    'tw1qas08': {
      'es': 'Create template screen for task todo app.',
      'en': '',
    },
    'w7f9d9zg': {
      'es': 'Completed',
      'en': '',
    },
    '3gbpvmnr': {
      'es': 'Tuesday, 10:00am',
      'en': '',
    },
    'je2p1hhz': {
      'es': 'Complete',
      'en': '',
    },
    'dj4bwg4b': {
      'es': 'WhatsApp\n',
      'en': '',
    },
    '9adyjuiw': {
      'es': 'Home',
      'en': '',
    },
  },
  // Login
  {
    '0914wkxr': {
      'es': 'Crear una Cuenta',
      'en': '',
    },
    '014csjih': {
      'es': 'Bienvenido!',
      'en': '',
    },
    'ug5w93dv': {
      'es': 'Ingrese sus datos para crear una cuenta nueva.',
      'en': '',
    },
    '78ajhrou': {
      'es': 'Correo',
      'en': '',
    },
    'qhl8obpt': {
      'es': 'Contraseña',
      'en': '',
    },
    '2gxwf10d': {
      'es': 'Contraseña',
      'en': '',
    },
    '2ms2mwnm': {
      'es': 'Nombre',
      'en': '',
    },
    'fkt368hp': {
      'es': 'Teléfono',
      'en': '',
    },
    'ncmxsj8g': {
      'es': 'Ingresar',
      'en': '',
    },
    'nio4wdv5': {
      'es': 'Correo es requerido',
      'en': '',
    },
    'b3ctlq1q': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'op4cjvut': {
      'es': 'Contraseña  es requerido',
      'en': '',
    },
    'ff5ayjea': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '6uh20f2l': {
      'es': 'Contraseña es requerido',
      'en': '',
    },
    '709je4nc': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'h76j5ic5': {
      'es': 'Nombre es requerido',
      'en': '',
    },
    'h6adpqfj': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    '37dd57c0': {
      'es': 'Teléfono es requerido',
      'en': '',
    },
    'pfmh9na3': {
      'es': 'Please choose an option from the dropdown',
      'en': '',
    },
    'pnf11u7p': {
      'es': 'Iniciar Sesion',
      'en': '',
    },
    '8zq7plm3': {
      'es': 'Bienvenido de Vuelta!',
      'en': '',
    },
    'jhemlbox': {
      'es': 'Ingrese sus credenciales para acceder.',
      'en': '',
    },
    'a5y88o0q': {
      'es': 'Email',
      'en': '',
    },
    'svry8rla': {
      'es': 'Contraseña',
      'en': '',
    },
    '44o7k7w4': {
      'es': 'Ingresar',
      'en': '',
    },
    'sorsew20': {
      'es': 'Forgot Password?',
      'en': '',
    },
    '3kde1i6i': {
      'es': 'Home',
      'en': '',
    },
  },
  // U_MostrarProductos
  {
    'uoabwpr1': {
      'es': 'Buscar',
      'en': '',
    },
    'et2h1zc3': {
      'es': 'Productos',
      'en': '',
    },
    'myz7q8pt': {
      'es': 'Home',
      'en': '',
    },
  },
  // ProdutosCRUD
  {
    'z07cn9lb': {
      'es': 'Agregar',
      'en': '',
    },
    'ky00trgs': {
      'es': 'Nombre',
      'en': '',
    },
    'oygt5hj7': {
      'es': 'Descripcion',
      'en': '',
    },
    'llqwuse0': {
      'es': 'Precio',
      'en': '',
    },
    'njfk6960': {
      'es': 'Categoria',
      'en': '',
    },
    'x13nn85u': {
      'es': 'Search...',
      'en': '',
    },
    'vpmjkxjg': {
      'es': 'Stock',
      'en': '',
    },
    '7bjecc33': {
      'es': 'Agregar Producto',
      'en': '',
    },
    'io5v5r99': {
      'es': 'Modificar',
      'en': '',
    },
    'wgrp4r56': {
      'es': '₡',
      'en': '',
    },
    'bnsz2cbe': {
      'es': 'Stock: ',
      'en': '',
    },
    'x9ctrtnb': {
      'es': 'Productos',
      'en': '',
    },
    '1jdb7qtr': {
      'es': '__',
      'en': '',
    },
  },
  // U_Servicios
  {
    '2tdk306j': {
      'es': 'Servicios',
      'en': '',
    },
    'o99srfgg': {
      'es': 'Buscar Servicios...',
      'en': '',
    },
    't5errx4z': {
      'es': 'Home',
      'en': '',
    },
  },
  // Carrito
  {
    'e7ffpc3n': {
      'es': 'Precio sin IVA',
      'en': '',
    },
    'ilcsg2p9': {
      'es': 'Impuestos',
      'en': '',
    },
    'ldqneanq': {
      'es': 'Total',
      'en': '',
    },
    '4a6wvy70': {
      'es': 'Comprar',
      'en': '',
    },
    'fd1bfbyi': {
      'es': 'Carrito',
      'en': '',
    },
    'v6abp68d': {
      'es': 'Home',
      'en': '',
    },
  },
  // Admin_Servicios
  {
    'xaf6vw7p': {
      'es': 'Productos',
      'en': '',
    },
    'hjpi7op5': {
      'es': 'Citas',
      'en': '',
    },
    'oyeyu0hm': {
      'es': 'Vehiculos',
      'en': '',
    },
    'tikpwy92': {
      'es': 'Categorias',
      'en': '',
    },
    '53cqu3h4': {
      'es': 'Servicios',
      'en': '',
    },
    'inn62mhz': {
      'es': 'Reportes',
      'en': '',
    },
    '6algmxxm': {
      'es': 'Administrador de Servicios',
      'en': '',
    },
    'd80yl0x0': {
      'es': 'Home',
      'en': '',
    },
  },
  // AgendarCita
  {
    'aifin2rl': {
      'es': 'Mes',
      'en': '',
    },
    'zzgysrzg': {
      'es': 'Seleccione sus datos para Agendar la Cita',
      'en': '',
    },
    '5syuthqe': {
      'es': 'Servicios Disponibles...',
      'en': '',
    },
    '5dgxyq3w': {
      'es': 'Search...',
      'en': '',
    },
    '7ln1n9i4': {
      'es': 'Option 1',
      'en': '',
    },
    'qm9oig90': {
      'es': 'Vehiculos Disponibles...',
      'en': '',
    },
    'eq7c6os7': {
      'es': 'Search...',
      'en': '',
    },
    'zjkfeizv': {
      'es': 'Option 1',
      'en': '',
    },
    'bazeqwzs': {
      'es': 'Seleccione la hora',
      'en': '',
    },
    'vy54jc74': {
      'es': 'Precio:',
      'en': '',
    },
    '9pzqie3h': {
      'es': 'Agendar Cita',
      'en': '',
    },
    'tqhp3b2q': {
      'es': 'Agendar una Cita',
      'en': '',
    },
    '8omlugo9': {
      'es': 'Home',
      'en': '',
    },
  },
  // CategoriasCRUD
  {
    'f28098dy': {
      'es': 'Agregar',
      'en': '',
    },
    'eizj8efu': {
      'es': 'Nombre',
      'en': '',
    },
    'zixkgjah': {
      'es': 'Descripcion',
      'en': '',
    },
    '0kew29qf': {
      'es': 'Agregar Categoria',
      'en': '',
    },
    'tog07sc8': {
      'es': 'Modificar',
      'en': '',
    },
    '7mpbz7fy': {
      'es': 'Categorias',
      'en': '',
    },
    'q9mn1i1h': {
      'es': '__',
      'en': '',
    },
  },
  // VehiculosCRUD
  {
    '9u4zugj4': {
      'es': 'Agregar',
      'en': '',
    },
    '9pedomdq': {
      'es': 'Marca',
      'en': '',
    },
    'ipmn9w7y': {
      'es': 'Modelo',
      'en': '',
    },
    '1l0sujmf': {
      'es': 'Año',
      'en': '',
    },
    'hsxtvn94': {
      'es': 'Placa',
      'en': '',
    },
    'gylqunpf': {
      'es': 'Tipo...',
      'en': '',
    },
    'xhnbeo86': {
      'es': 'Search...',
      'en': '',
    },
    '6nwcpwnj': {
      'es': 'Sedan',
      'en': '',
    },
    '5llihi5f': {
      'es': 'SUV',
      'en': '',
    },
    'asunavem': {
      'es': 'Hatchback',
      'en': '',
    },
    'v9ucsfpy': {
      'es': 'Pickup',
      'en': '',
    },
    'f5iovxaw': {
      'es': 'Camion',
      'en': '',
    },
    '8sms2bjn': {
      'es': 'Propietario...',
      'en': '',
    },
    'bg8xz4oy': {
      'es': 'Search...',
      'en': '',
    },
    'mkckkd9z': {
      'es': 'Anotaciones',
      'en': '',
    },
    'z0nkkwdu': {
      'es': 'Agregar Vechiculo',
      'en': '',
    },
    'th9n51qn': {
      'es': 'Decodificar VIN',
      'en': '',
    },
    '81iq26sn': {
      'es': 'Modificar',
      'en': '',
    },
    'ba9zp7m5': {
      'es': 'Vehiculos',
      'en': '',
    },
    'e7jmp18s': {
      'es': '__',
      'en': '',
    },
  },
  // CitasCRUD
  {
    '9mfvlja7': {
      'es': 'Pendientes',
      'en': '',
    },
    'mtb7zsc4': {
      'es': 'Completadas',
      'en': '',
    },
    'lsuarf6a': {
      'es': 'Citas',
      'en': '',
    },
    'f51prmvy': {
      'es': '__',
      'en': '',
    },
  },
  // ServiciosCRUD
  {
    'lxlct8cz': {
      'es': 'Agregar',
      'en': '',
    },
    'o4lxhlq5': {
      'es': 'Nombre',
      'en': '',
    },
    'm4dh261m': {
      'es': 'Descripcion',
      'en': '',
    },
    'sfrxm2df': {
      'es': 'Precio',
      'en': '',
    },
    'nihdqyuk': {
      'es': 'Agregar Servicio',
      'en': '',
    },
    '1j9cl9mv': {
      'es': 'Modificar',
      'en': '',
    },
    'ew7bvijz': {
      'es': '₡',
      'en': '',
    },
    '4y78csmn': {
      'es': 'Servicios',
      'en': '',
    },
    'w94iip1r': {
      'es': '__',
      'en': '',
    },
  },
  // Reportes
  {
    'ye3vsxe3': {
      'es': 'check.io',
      'en': '',
    },
    'll6rncsy': {
      'es': 'Andrew D.',
      'en': '',
    },
    'h1fvvw88': {
      'es': 'admin@gmail.com',
      'en': '',
    },
    'i3o09l4h': {
      'es': 'Dashboard',
      'en': '',
    },
    'dx3y3njw': {
      'es': 'Chats',
      'en': '',
    },
    'cw24gfoj': {
      'es': 'Projects',
      'en': '',
    },
    'q2a8r40z': {
      'es': 'Explore',
      'en': '',
    },
    'vi6prq55': {
      'es': 'Ventas',
      'en': '',
    },
    'o2mcpc57': {
      'es': 'Ventas totales',
      'en': '',
    },
    'adsrf2lj': {
      'es': 'Assign',
      'en': '',
    },
    'asu5odvd': {
      'es': 'Ventas totales hoy',
      'en': '',
    },
    'wxtkkb57': {
      'es': '32.2%',
      'en': '',
    },
    'ghihxh20': {
      'es': 'Ventas Totales',
      'en': '',
    },
    'yx81pw29': {
      'es': '45.5%',
      'en': '',
    },
    'o2u01xl5': {
      'es': 'Citas de Hoy',
      'en': '',
    },
    'makfq3h2': {
      'es': 'Puede ver las citas de hoy',
      'en': '',
    },
    '8wf0tcmh': {
      'es': 'Pendiente',
      'en': '',
    },
    'g7xu52le': {
      'es': 'Completado',
      'en': '',
    },
    '6mhsx572': {
      'es': 'Activity',
      'en': '',
    },
    'bhgm8m1s': {
      'es': 'Recent completed tasks from your team.',
      'en': '',
    },
    'mjny2763': {
      'es': 'Rudy Fernandez',
      'en': '',
    },
    '7yhgzezy': {
      'es': '4m ago',
      'en': '',
    },
    'gfxne7x8': {
      'es': 'Completed ',
      'en': '',
    },
    'o3bb0hzg': {
      'es': 'Marketing Plan',
      'en': '',
    },
    'zprqomsq': {
      'es': 'Rudy Fernandez',
      'en': '',
    },
    'f69a2ce5': {
      'es': '4m ago',
      'en': '',
    },
    '3zo3z605': {
      'es': 'Started ',
      'en': '',
    },
    '7irk3mp2': {
      'es': 'Marketing Plan',
      'en': '',
    },
    'lb3u8tfz': {
      'es': 'Abigail Rojas',
      'en': '',
    },
    '9voqyaje': {
      'es': '4m ago',
      'en': '',
    },
    '5gnzztf9': {
      'es': 'Assigned  ',
      'en': '',
    },
    '2b4298yx': {
      'es': 'Rudy Fernandez ',
      'en': '',
    },
    'rq7vl291': {
      'es': 'to ',
      'en': '',
    },
    'acjnc37u': {
      'es': 'Marketing Plan',
      'en': '',
    },
    'zveiv5hx': {
      'es': 'Abigail Rojas',
      'en': '',
    },
    'ltlt815t': {
      'es': '4m ago',
      'en': '',
    },
    '3d1l2w1n': {
      'es': 'Created a project: ',
      'en': '',
    },
    'prd6u3ql': {
      'es': 'Marketing Plan',
      'en': '',
    },
    'suk505w6': {
      'es': 'Liz Ambridge',
      'en': '',
    },
    '1jxy7lro': {
      'es': '4m ago',
      'en': '',
    },
    '1hleqwim': {
      'es': 'Sent a plan update for ',
      'en': '',
    },
    'arfa7fja': {
      'es': 'Marketing Plan',
      'en': '',
    },
    's85w4mh0': {
      'es': 'Project Started',
      'en': '',
    },
    '1ldx8k6j': {
      'es': '12d ago',
      'en': '',
    },
    'fs3g3eue': {
      'es': 'Reportes',
      'en': '',
    },
    'vm5greb0': {
      'es': 'Home',
      'en': '',
    },
  },
  // VerProductoCotizar
  {
    'n0y2f5ml': {
      'es': 'Cantidad',
      'en': '',
    },
    'hbfljtfj': {
      'es': 'Total',
      'en': '',
    },
    'yuccmvh7': {
      'es': 'Agregar',
      'en': '',
    },
  },
  // EditarProducto
  {
    'o6wbqfn7': {
      'es': 'Editar Producto',
      'en': '',
    },
    'yju2xjuu': {
      'es': 'Categoria',
      'en': '',
    },
    'tfc9iko5': {
      'es': 'Search...',
      'en': '',
    },
    'lhwti42s': {
      'es': 'Product Image',
      'en': '',
    },
    'v9nolunq': {
      'es': 'Cancelar',
      'en': '',
    },
    'w42ekoft': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // EditarCategoria
  {
    'tv713p01': {
      'es': 'Editar Categoria',
      'en': '',
    },
    'kr67gchc': {
      'es': 'Nombre Categoria',
      'en': '',
    },
    '92rosudp': {
      'es': 'Descripcion',
      'en': '',
    },
    '4qo6wwsx': {
      'es': 'Cancelar',
      'en': '',
    },
    'oga6zw72': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // profile
  {
    '1yl2uazd': {
      'es': 'Editar Perfil',
      'en': '',
    },
    '6vxmofs6': {
      'es': 'Detalles de su perfil.',
      'en': '',
    },
    '6q5vs29e': {
      'es': 'Nombre',
      'en': '',
    },
    'bosiu57e': {
      'es': 'Email',
      'en': '',
    },
    'benldrk0': {
      'es': 'Telefono',
      'en': '',
    },
    'p0fv12i8': {
      'es': 'Creado en:',
      'en': '',
    },
    '03p5kcqy': {
      'es': 'Ultima vez Activo:',
      'en': '',
    },
    'hfo8qpu6': {
      'es': 'Justo Ahora',
      'en': '',
    },
    'hfb12mld': {
      'es': 'Cancelar',
      'en': '',
    },
    '90rphv2p': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // EditarVehiculo
  {
    '4ohfmmou': {
      'es': 'Editar Vehiculo',
      'en': '',
    },
    'pz4zd1ew': {
      'es': 'Tipo...',
      'en': '',
    },
    'nq9kdkez': {
      'es': 'Search...',
      'en': '',
    },
    '7bgu8kst': {
      'es': 'Sedan',
      'en': '',
    },
    'mjitrw0z': {
      'es': 'SUV',
      'en': '',
    },
    'q0h68r3r': {
      'es': 'Hatchback',
      'en': '',
    },
    'c8gcfyb6': {
      'es': 'Pickup',
      'en': '',
    },
    'nuezcadq': {
      'es': 'Camion',
      'en': '',
    },
    '6g2amx83': {
      'es': 'Propietario...',
      'en': '',
    },
    'fp9h6e32': {
      'es': 'Search...',
      'en': '',
    },
    'g6lzc2vm': {
      'es': 'Imagen Vehiculo',
      'en': '',
    },
    'hw2lzdt6': {
      'es': 'Cancelar',
      'en': '',
    },
    'nad6v0s0': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // EmtyList
  {
    'nk1jekfv': {
      'es': 'Carrito vacío',
      'en': '',
    },
  },
  // Loading
  {
    'gqpfjw2t': {
      'es': 'Realizando compra...',
      'en': '',
    },
    '65zhewce': {
      'es': 'Estamos realizando su pedido, por favor espere.',
      'en': '',
    },
  },
  // Exito
  {
    '45tkwmij': {
      'es': 'Pedido realizado con éxito.',
      'en': '',
    },
    'gmxyfvlg': {
      'es': 'Muchas gracias por su compra.',
      'en': '',
    },
    'sbjipncs': {
      'es': 'Regresar',
      'en': '',
    },
  },
  // DecodificarVINVehiculo
  {
    'xz7xv80k': {
      'es': 'Decodificar VIN',
      'en': '',
    },
    'ediy500p': {
      'es': 'Ingrese el VIN',
      'en': '',
    },
    '5083fnmm': {
      'es': 'Buscar',
      'en': '',
    },
    '38hppw1u': {
      'es': 'Marca',
      'en': '',
    },
    'k8vtsdhq': {
      'es': 'Modelo',
      'en': '',
    },
    'g6vmjfcm': {
      'es': 'Año',
      'en': '',
    },
    'bq92itq0': {
      'es': 'Tipo',
      'en': '',
    },
    'zkfh4kf0': {
      'es': 'Placa',
      'en': '',
    },
    'kmzz2rjl': {
      'es': 'Propietario...',
      'en': '',
    },
    'kti9vt7l': {
      'es': 'Search...',
      'en': '',
    },
    'jbno0pyo': {
      'es': 'Notas',
      'en': '',
    },
    'z7ytfmlb': {
      'es': 'Cancelar',
      'en': '',
    },
    'yvp9xgwd': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // ConfirmarCita
  {
    't7vjejpm': {
      'es': 'Confirmar cita',
      'en': '',
    },
    'em18vh8z': {
      'es': 'Confirmar cita',
      'en': '',
    },
  },
  // EditarCita
  {
    'jo4oht55': {
      'es': 'Editar Cita',
      'en': '',
    },
    '7n2l0ggy': {
      'es': 'Placa',
      'en': '',
    },
    '8eyy7nsj': {
      'es': 'Vehiculos Disponibles...',
      'en': '',
    },
    'nhbbkayl': {
      'es': 'Search...',
      'en': '',
    },
    '0b9o4yes': {
      'es': 'Option 1',
      'en': '',
    },
    'ow4c3b5e': {
      'es': 'Servicio',
      'en': '',
    },
    '0g8ja1u7': {
      'es': 'Servicios Disponibles...',
      'en': '',
    },
    'gma3fjwm': {
      'es': 'Search...',
      'en': '',
    },
    'x5vdq17p': {
      'es': 'Option 1',
      'en': '',
    },
    'llfedzcc': {
      'es': 'Fecha',
      'en': '',
    },
    'ke2wfq87': {
      'es': 'Cancelar',
      'en': '',
    },
    'j9wgt68m': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // EstadoCita
  {
    'p01ug28s': {
      'es': 'Estado...',
      'en': '',
    },
    'weq9g3mn': {
      'es': 'Search...',
      'en': '',
    },
    'm4ivhhoe': {
      'es': 'Ingresado',
      'en': '',
    },
    '823sr2jv': {
      'es': 'En progreso',
      'en': '',
    },
    'gvxso8w5': {
      'es': 'Completado',
      'en': '',
    },
  },
  // EditarServicio
  {
    'n9d2ww0o': {
      'es': 'Editar Servicio',
      'en': '',
    },
    'vt9gsp3r': {
      'es': 'Imagen Servicio',
      'en': '',
    },
    'jd5ko5rd': {
      'es': 'Cancelar',
      'en': '',
    },
    'mkuyx3s5': {
      'es': 'Guardar Cambios',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'p9pup043': {
      'es': '',
      'en': '',
    },
    '0yuts5vq': {
      'es': '',
      'en': '',
    },
    '6zmrqjtn': {
      'es': '',
      'en': '',
    },
    'bjhdkgc1': {
      'es': '',
      'en': '',
    },
    'ly4n5x39': {
      'es': '',
      'en': '',
    },
    'uuedwh7i': {
      'es': '',
      'en': '',
    },
    'm1xg7g4x': {
      'es': '',
      'en': '',
    },
    's5ji0mw7': {
      'es': '',
      'en': '',
    },
    'hwhvl9ht': {
      'es': '',
      'en': '',
    },
    '9at9p97k': {
      'es': '',
      'en': '',
    },
    'f8nzpdde': {
      'es': '',
      'en': '',
    },
    'o3dicmle': {
      'es': '',
      'en': '',
    },
    '98b903et': {
      'es': '',
      'en': '',
    },
    '288k2hd4': {
      'es': '',
      'en': '',
    },
    'xgm2k624': {
      'es': '',
      'en': '',
    },
    '1w1tj3ad': {
      'es': '',
      'en': '',
    },
    '4nxn1pq2': {
      'es': '',
      'en': '',
    },
    '6u5zvnj0': {
      'es': '',
      'en': '',
    },
    'qsyjalk9': {
      'es': '',
      'en': '',
    },
    '7qy4hy82': {
      'es': '',
      'en': '',
    },
    'lbhowsdy': {
      'es': '',
      'en': '',
    },
    '320mos3s': {
      'es': '',
      'en': '',
    },
    '0pi9384j': {
      'es': '',
      'en': '',
    },
    'ik8zh4g4': {
      'es': '',
      'en': '',
    },
    '9dirgf6x': {
      'es': '',
      'en': '',
    },
    'jwitc7ms': {
      'es': '',
      'en': '',
    },
    'bkmqlwef': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
