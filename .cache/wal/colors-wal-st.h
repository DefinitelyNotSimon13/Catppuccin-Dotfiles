const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#080D15", /* black   */
  [1] = "#63535A", /* red     */
  [2] = "#865B3C", /* green   */
  [3] = "#946C69", /* yellow  */
  [4] = "#A17985", /* blue    */
  [5] = "#7C8381", /* magenta */
  [6] = "#AD9296", /* cyan    */
  [7] = "#ddcacc", /* white   */

  /* 8 bright colors */
  [8]  = "#9a8d8e",  /* black   */
  [9]  = "#63535A",  /* red     */
  [10] = "#865B3C", /* green   */
  [11] = "#946C69", /* yellow  */
  [12] = "#A17985", /* blue    */
  [13] = "#7C8381", /* magenta */
  [14] = "#AD9296", /* cyan    */
  [15] = "#ddcacc", /* white   */

  /* special colors */
  [256] = "#080D15", /* background */
  [257] = "#ddcacc", /* foreground */
  [258] = "#ddcacc",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
