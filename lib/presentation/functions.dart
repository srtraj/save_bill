getFirstLetterFromName(String name) {
  return name.split(" ").map((String e) => e[0]).join();
}
