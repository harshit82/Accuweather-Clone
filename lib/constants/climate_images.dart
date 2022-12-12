class ClimateImages {
  final Map<String, String> images = {
    "sunny":
        "https://images.unsplash.com/photo-1622278647429-71bc97e904e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
    "thunder":
        "https://images.unsplash.com/photo-1500674425229-f692875b0ab7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "overcast":
        "https://images.unsplash.com/photo-1500740516770-92bd004b996e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
    "frost":
        "https://images.unsplash.com/photo-1613387275674-cb92af1c29d1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
    "snow":
        "https://images.unsplash.com/photo-1551582045-6ec9c11d8697?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
    "mist":
        "https://images.unsplash.com/photo-1581713872605-b9dfbc84eaa4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "windy":
        "https://images.unsplash.com/photo-1505672678657-cc7037095e60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "fog":
        "https://images.unsplash.com/photo-1485236715568-ddc5ee6ca227?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "dew":
        "https://images.unsplash.com/photo-1528901326763-e9bbffd31784?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "spring":
        "https://images.unsplash.com/photo-1530092285049-1c42085fd395?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "autumn":
        "https://images.unsplash.com/photo-1571247633706-132f6bb5459e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "rain":
        "https://images.unsplash.com/photo-1534274988757-a28bf1a57c17?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
    "clear":
        "https://images.unsplash.com/photo-1512776596353-5e1b68d228e2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    "smoke":
        "https://images.unsplash.com/photo-1598760122223-45f0f18a1bbd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
    "haze":
        "https://images.unsplash.com/photo-1533757704860-384affeed946?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  };

  final String defaultImage =
      "https://images.unsplash.com/photo-1517639493569-5666a7b2f494?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";

  dynamic chooseImage(String weather) {
    weather = weather.toLowerCase();
    if (images.containsKey(weather)) {
      return images[weather];
    } else {
      return defaultImage;
    }
  }
}
