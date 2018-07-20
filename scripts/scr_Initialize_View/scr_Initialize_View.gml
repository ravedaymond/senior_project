/// @description Initialize the View passed to the script.
/// @param view The View Index of the current room being initialized.
/// @param visible Whether or not the View is visible or not.
/// @param wport The Port Width of the View being set.
/// @param hport The Port Height of the View being set.
// ---------------------------------------------------------------------------------
view_enabled = true;
view_set_visible(argument[0], argument[1]);
view_set_wport(argument[0], argument[2]);
view_set_hport(argument[0], argument[3]);
