class IsoData {
  static flagOf(String code) {
    return data[code]?['flag'] ?? '?';
  }

  static longNameOf(String code) {
    return data[code]?['name'] ?? 'unknown name';
  }

  static final Map<String, Map<String, String>> data = {
    'AED': {'name': 'UAE Dirham', 'flag': '🇦🇪'},
    'AFN': {'name': 'Afghani', 'flag': '🇦🇫'},
    'ALL': {'name': 'Lek', 'flag': 'X'},
    'AMD': {'name': 'Armenian Dram', 'flag': '🇦🇲'},
    'ANG': {'name': 'Netherlands Antillean Guilder', 'flag': '🇳🇱'},
    'AOA': {'name': 'Kwanza', 'flag': 'X'},
    'ARS': {'name': 'Argentine Peso', 'flag': '🇦🇷'},
    'AUD': {'name': 'Australian Dollar', 'flag': '🇦🇺'},
    'AWG': {'name': 'Aruban Florin', 'flag': 'X'},
    'AZN': {'name': 'Azerbaijan Manat', 'flag': '🇦🇿'},
    'BAM': {'name': 'Convertible Mark', 'flag': 'X'},
    'BBD': {'name': 'Barbados Dollar', 'flag': '🇧🇧'},
    'BDT': {'name': 'Taka', 'flag': 'X'},
    'BGN': {'name': 'Bulgarian Lev', 'flag': '🇧🇬'},
    'BHD': {'name': 'Bahraini Dinar', 'flag': '🇧🇭'},
    'BIF': {'name': 'Burundi Franc', 'flag': '🇧🇮'},
    'BMD': {'name': 'Bermudian Dollar', 'flag': 'X'},
    'BND': {'name': 'Brunei Dollar', 'flag': '🇧🇳'},
    'BOB': {'name': 'Boliviano', 'flag': '🇧🇴'},
    'BOV': {'name': 'Mvdol', 'flag': 'X'},
    'BRL': {'name': 'Brazilian Real', 'flag': '🇧🇷'},
    'BSD': {'name': 'Bahamian Dollar', 'flag': 'X'},
    'BTN': {'name': 'Ngultrum', 'flag': 'X'},
    'BWP': {'name': 'Pula', 'flag': 'X'},
    'BYN': {'name': 'Belarusian Ruble', 'flag': '🇧🇾'},
    'BZD': {'name': 'Belize Dollar', 'flag': 'X'},
    'CAD': {'name': 'Canadian Dollar', 'flag': '🇨🇦'},
    'CDF': {'name': 'Congolese Franc', 'flag': 'X'},
    'CHE': {'name': 'WIR Euro', 'flag': 'X'},
    'CHF': {'name': 'Swiss Franc', 'flag': '🇨🇭'},
    'CHW': {'name': 'WIR Franc', 'flag': 'X'},
    'CLF': {'name': 'Unidad de Fomento', 'flag': 'X'},
    'CLP': {'name': 'Chilean Peso', 'flag': 'X'},
    'CNY': {'name': 'Yuan Renminbi', 'flag': '🇨🇳'},
    'COP': {'name': 'Colombian Peso', 'flag': 'X'},
    'COU': {'name': 'Unidad de Valor Real', 'flag': 'X'},
    'CRC': {'name': 'Costa Rican Colon', 'flag': 'X'},
    'CUC': {'name': 'Peso Convertible', 'flag': 'X'},
    'CUP': {'name': 'Cuban Peso', 'flag': 'X'},
    'CVE': {'name': 'Cabo Verde Escudo', 'flag': 'X'},
    'CZK': {'name': 'Czech Koruna', 'flag': '🇨🇿'},
    'DJF': {'name': 'Djibouti Franc', 'flag': 'X'},
    'DKK': {'name': 'Danish Krone', 'flag': '🇩🇰'},
    'DOP': {'name': 'Dominican Peso', 'flag': 'X'},
    'DZD': {'name': 'Algerian Dinar', 'flag': 'X'},
    'EGP': {'name': 'Egyptian Pound', 'flag': 'X'},
    'ERN': {'name': 'Nakfa', 'flag': 'X'},
    'ETB': {'name': 'Ethiopian Birr', 'flag': 'X'},
    'EUR': {'name': 'Euro', 'flag': '🇪🇺'},
    'FJD': {'name': 'Fiji Dollar', 'flag': 'X'},
    'FKP': {'name': 'Falkland Islands Pound', 'flag': 'X'},
    'GBP': {'name': 'Pound Sterling', 'flag': '🇬🇧'},
    'GEL': {'name': 'Lari', 'flag': 'X'},
    'GHS': {'name': 'Ghana Cedi', 'flag': 'X'},
    'GIP': {'name': 'Gibraltar Pound', 'flag': 'X'},
    'GMD': {'name': 'Dalasi', 'flag': 'X'},
    'GNF': {'name': 'Guinean Franc', 'flag': 'X'},
    'GTQ': {'name': 'Quetzal', 'flag': 'X'},
    'GYD': {'name': 'Guyana Dollar', 'flag': 'X'},
    'HKD': {'name': 'Hong Kong Dollar', 'flag': '🇭🇰'},
    'HNL': {'name': 'Lempira', 'flag': 'X'},
    'HRK': {'name': 'Kuna', 'flag': '🇭🇷'},
    'HTG': {'name': 'Gourde', 'flag': 'X'},
    'HUF': {'name': 'Forint', 'flag': '🇭🇺'},
    'IDR': {'name': 'Rupiah', 'flag': '🇮🇩'},
    'ILS': {'name': 'New Israeli Sheqel', 'flag': '🇮🇱'},
    'INR': {'name': 'Indian Rupee', 'flag': '🇮🇳'},
    'IQD': {'name': 'Iraqi Dinar', 'flag': 'X'},
    'IRR': {'name': 'Iranian Rial', 'flag': 'X'},
    'ISK': {'name': 'Iceland Krona', 'flag': '🇮🇸'},
    'JMD': {'name': 'Jamaican Dollar', 'flag': 'X'},
    'JOD': {'name': 'Jordanian Dinar', 'flag': 'X'},
    'JPY': {'name': 'Yen', 'flag': '🇯🇵'},
    'KES': {'name': 'Kenyan Shilling', 'flag': 'X'},
    'KGS': {'name': 'Som', 'flag': 'X'},
    'KHR': {'name': 'Riel', 'flag': 'X'},
    'KMF': {'name': 'Comorian Franc', 'flag': 'X'},
    'KPW': {'name': 'North Korean Won', 'flag': 'X'},
    'KRW': {'name': 'Won', 'flag': '🇰🇷'},
    'KWD': {'name': 'Kuwaiti Dinar', 'flag': 'X'},
    'KYD': {'name': 'Cayman Islands Dollar', 'flag': 'X'},
    'KZT': {'name': 'Tenge', 'flag': 'X'},
    'LAK': {'name': 'Lao Kip', 'flag': 'X'},
    'LBP': {'name': 'Lebanese Pound', 'flag': 'X'},
    'LKR': {'name': 'Sri Lanka Rupee', 'flag': 'X'},
    'LRD': {'name': 'Liberian Dollar', 'flag': 'X'},
    'LSL': {'name': 'Loti', 'flag': 'X'},
    'LYD': {'name': 'Libyan Dinar', 'flag': 'X'},
    'MAD': {'name': 'Moroccan Dirham', 'flag': 'X'},
    'MDL': {'name': 'Moldovan Leu', 'flag': 'X'},
    'MGA': {'name': 'Malagasy Ariary', 'flag': 'X'},
    'MKD': {'name': 'Denar', 'flag': 'X'},
    'MMK': {'name': 'Kyat', 'flag': 'X'},
    'MNT': {'name': 'Tugrik', 'flag': '🇲🇳'},
    'MOP': {'name': 'Pataca', 'flag': 'X'},
    'MRU': {'name': 'Ouguiya', 'flag': 'X'},
    'MUR': {'name': 'Mauritius Rupee', 'flag': 'X'},
    'MVR': {'name': 'Rufiyaa', 'flag': 'X'},
    'MWK': {'name': 'Malawi Kwacha', 'flag': 'X'},
    'MXN': {'name': 'Mexican Peso', 'flag': '🇲🇽'},
    'MXV': {'name': 'Mexican Unidad de Inversion (UDI)', 'flag': 'X'},
    'MYR': {'name': 'Malaysian Ringgit', 'flag': '🇲🇾'},
    'MZN': {'name': 'Mozambique Metical', 'flag': 'X'},
    'NAD': {'name': 'Namibia Dollar', 'flag': 'X'},
    'NGN': {'name': 'Naira', 'flag': 'X'},
    'NIO': {'name': 'Cordoba Oro', 'flag': 'X'},
    'NOK': {'name': 'Norwegian Krone', 'flag': '🇳🇴'},
    'NPR': {'name': 'Nepalese Rupee', 'flag': 'X'},
    'NZD': {'name': 'New Zealand Dollar', 'flag': '🇳🇿'},
    'OMR': {'name': 'Rial Omani', 'flag': 'X'},
    'PAB': {'name': 'Balboa', 'flag': 'X'},
    'PEN': {'name': 'Sol', 'flag': 'X'},
    'PGK': {'name': 'Kina', 'flag': 'X'},
    'PHP': {'name': 'Philippine Peso', 'flag': '🇵🇭'},
    'PKR': {'name': 'Pakistan Rupee', 'flag': 'X'},
    'PLN': {'name': 'Zloty', 'flag': '🇵🇱'},
    'PYG': {'name': 'Guarani', 'flag': 'X'},
    'QAR': {'name': 'Qatari Rial', 'flag': 'X'},
    'RON': {'name': 'Romanian Leu', 'flag': '🇷🇴'},
    'RSD': {'name': 'Serbian Dinar', 'flag': 'X'},
    'RUB': {'name': 'Russian Ruble', 'flag': '🇷🇺'},
    'RWF': {'name': 'Rwanda Franc', 'flag': 'X'},
    'SAR': {'name': 'Saudi Riyal', 'flag': 'X'},
    'SBD': {'name': 'Solomon Islands Dollar', 'flag': 'X'},
    'SCR': {'name': 'Seychelles Rupee', 'flag': 'X'},
    'SDG': {'name': 'Sudanese Pound', 'flag': 'X'},
    'SEK': {'name': 'Swedish Krona', 'flag': '🇸🇪'},
    'SGD': {'name': 'Singapore Dollar', 'flag': '🇸🇬'},
    'SHP': {'name': 'Saint Helena Pound', 'flag': 'X'},
    'SLL': {'name': 'Leone', 'flag': 'X'},
    'SOS': {'name': 'Somali Shilling', 'flag': 'X'},
    'SRD': {'name': 'Surinam Dollar', 'flag': 'X'},
    'SSP': {'name': 'South Sudanese Pound', 'flag': 'X'},
    'STN': {'name': 'Dobra', 'flag': 'X'},
    'SVC': {'name': 'El Salvador Colon', 'flag': 'X'},
    'SYP': {'name': 'Syrian Pound', 'flag': 'X'},
    'SZL': {'name': 'Lilangeni', 'flag': 'X'},
    'THB': {'name': 'Baht', 'flag': '🇹🇭'},
    'TJS': {'name': 'Somoni', 'flag': 'X'},
    'TMT': {'name': 'Turkmenistan New Manat', 'flag': 'X'},
    'TND': {'name': 'Tunisian Dinar', 'flag': 'X'},
    'TOP': {'name': 'Pa’anga', 'flag': 'X'},
    'TRY': {'name': 'Turkish Lira', 'flag': '🇹🇷'},
    'TTD': {'name': 'Trinidad and Tobago Dollar', 'flag': 'X'},
    'TWD': {'name': 'New Taiwan Dollar', 'flag': 'X'},
    'TZS': {'name': 'Tanzanian Shilling', 'flag': 'X'},
    'UAH': {'name': 'Hryvnia', 'flag': 'X'},
    'UGX': {'name': 'Uganda Shilling', 'flag': 'X'},
    'USD': {'name': 'US Dollar', 'flag': '🇺🇸'},
    'USN': {'name': 'US Dollar (Next day)', 'flag': 'X'},
    'UYI': {'name': 'Uruguay Peso en Unidades Indexadas (UI)', 'flag': 'X'},
    'UYU': {'name': 'Peso Uruguayo', 'flag': 'X'},
    'UYW': {'name': 'Unidad Previsional', 'flag': 'X'},
    'UZS': {'name': 'Uzbekistan Sum', 'flag': '🇺🇿'},
    'VES': {'name': 'Bolívar Soberano', 'flag': 'X'},
    'VND': {'name': 'Dong', 'flag': 'X'},
    'VUV': {'name': 'Vatu', 'flag': 'X'},
    'WST': {'name': 'Tala', 'flag': 'X'},
    'XAF': {'name': 'CFA Franc BEAC', 'flag': 'X'},
    'XAG': {'name': 'Silver', 'flag': 'X'},
    'XAU': {'name': 'Gold', 'flag': 'X'},
    'XBA': {
      'name': 'Bond Markets Unit European Composite Unit (EURCO)',
      'flag': 'X'
    },
    'XBB': {
      'name': 'Bond Markets Unit European Monetary Unit (E.M.U.-6)',
      'flag': 'X'
    },
    'XBC': {
      'name': 'Bond Markets Unit European Unit of Account 9 (E.U.A.-9)',
      'flag': 'X'
    },
    'XBD': {
      'name': 'Bond Markets Unit European Unit of Account 17 (E.U.A.-17)',
      'flag': 'X'
    },
    'XCD': {'name': 'East Caribbean Dollar', 'flag': 'X'},
    'XDR': {'name': 'SDR (Special Drawing Right)', 'flag': 'X'},
    'XOF': {'name': 'CFA Franc BCEAO', 'flag': 'X'},
    'XPD': {'name': 'Palladium', 'flag': 'X'},
    'XPF': {'name': 'CFP Franc', 'flag': 'X'},
    'XPT': {'name': 'Platinum', 'flag': 'X'},
    'XSU': {'name': 'Sucre', 'flag': 'X'},
    'XTS': {
      'name': 'Codes specifically reserved for testing purposes',
      'flag': 'X'
    },
    'XUA': {'name': 'ADB Unit of Account', 'flag': 'X'},
    'XXX': {
      'name':
          'The codes assigned for transactions where no currency is involved',
      'flag': 'X'
    },
    'YER': {'name': 'Yemeni Rial', 'flag': '🇾🇪'},
    'ZAR': {'name': 'Rand', 'flag': '🇿🇦'},
    'ZMW': {'name': 'Zambian Kwacha', 'flag': '🇿🇲'},
    'ZWL': {'name': 'Zimbabwe Dollar', 'flag': '🇿🇼'},
  };
}
