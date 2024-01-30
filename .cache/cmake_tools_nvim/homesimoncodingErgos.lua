return {
  base_settings = {
    build_dir = "/home/simon/coding/Ergos/build/${variant:buildType}",
    build_options = {},
    env = {},
    generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
    working_dir = "${dir.binary}"
  },
  build_directory = "/home/simon/coding/Ergos/build/Debug",
  build_target = "all",
  build_type = "Debug",
  cwd = "/home/simon/coding/Ergos",
  env_script = " ",
  launch_target = "Ergos",
  target_settings = {},
  variant = {
    buildType = "Debug"
  }
}