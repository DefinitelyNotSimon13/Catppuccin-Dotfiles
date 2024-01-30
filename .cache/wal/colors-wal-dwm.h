static const char norm_fg[] = "#ddcacc";
static const char norm_bg[] = "#080D15";
static const char norm_border[] = "#9a8d8e";

static const char sel_fg[] = "#ddcacc";
static const char sel_bg[] = "#865B3C";
static const char sel_border[] = "#ddcacc";

static const char urg_fg[] = "#ddcacc";
static const char urg_bg[] = "#63535A";
static const char urg_border[] = "#63535A";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
