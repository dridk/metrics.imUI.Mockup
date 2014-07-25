.pragma library

    /*  GENERIC COLORS */
var LIGHT = "#ffffff",
    DARK = "#2a3f50",
    LIGHT_BACKGROUND = LIGHT,
    DARK_BACKGROUND = DARK,
    SELECTION_COLOR = "#1f8dd6",
    UPDATE_COLOR = "#f44800",
    LINK_COLOR = "#128eb2",
    /*  LIGHT SIDE */
    VIEW_BACKGROUND = "#f5f5f5",
    WIDGET_BACKGROUND = LIGHT_BACKGROUND,
    TEXT_DEFAULT_COLOR = "#515b6d",
    TEXT_FADED_COLOR = "#777777",
    UI_ACTIVE_COLOR = DARK_BACKGROUND,
    UI_INACTIVE_COLOR = "#9db6cb",
    UI_BORDER_COLOR = "#e2e2e8",
    /* DARK SIDE [Luke, I am your father!] */
    VIEW_BACKGROUND_I = DARK_BACKGROUND,
    WIDGET_BACKGROUND_I = "#3b546a",
    TEXT_DEFAULT_COLOR_I = "#ffffff",
    TEXT_FADED_COLOR_I = "#128eb2",
    UI_ACTIVE_COLOR_I = "#ffffff",
    UI_INACTIVE_COLOR_I = "#3b546a",
    UI_BORDER_COLOR_I = "#3b546a",
    /* OVERLAYS AND DIALOGUES */
    OVERLAY_BACKGROUND = Qt.rgba(),
    DIALOGUE_BACKGROUND = VIEW_BACKGROUND,
    /*Button styles*/
        BUTTON_DEFAULT = 0,
        BUTTON_INVERSE = 1,
        BUTTON_PRIMARY = 2,
        BUTTON_SECONDARY = 3,
        BUTTON_PLAIN = 4,
    BUTTON_STYLES = [{
         //BUTTON_NORMAL
                         "BACKGROUND": VIEW_BACKGROUND,
                         "TEXT": UI_ACTIVE_COLOR
        },{
         //BUTTON_INVERSE
                         "BACKGROUND": VIEW_BACKGROUND_I,
                         "TEXT": UI_ACTIVE_COLOR_I
        },{
         //BUTTON_PRIMARY
                         "BACKGROUND": UPDATE_COLOR,
                         "TEXT": UI_ACTIVE_COLOR_I
        },{
         //BUTTON_SECONDARY
                         "BACKGROUND": SELECTION_COLOR,
                         "TEXT": UI_ACTIVE_COLOR_I
        },{
         //BUTTON_PLAIN
                         "BACKGROUND": "transparent",
                         "TEXT": TEXT_FADED_COLOR
        }];

