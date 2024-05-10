local status_ok, everforest = pcall(require, "everforest")
if not status_ok then
  return
end
-- settings for everforest colors.
everforest.setup {
  background = "hard",
  ui_contrast = "low",
  dim_inactive_windows = false,
  better_performance = true,
}
-- activation of everforest colors.
everforest.load()
