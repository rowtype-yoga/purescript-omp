export const pasteToEditor = context => text => () => {
  const ui = context?.ui;
  if (typeof ui?.pasteToEditor !== "function") return false;
  ui.pasteToEditor(text);
  return true;
};
