/* LINES.MSS CONTENTS
 * - Roads
 * - other linear features
 */


/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */

/* ---- Casing ----------------------------------------------- */

/* This first layer (roads::outline) is the "bottom" layer of most of roads */
/* elements. It will give the outline of the roads, except for roads that also use */
/* outline2. */

#roads::outline,
#tunnel[render='1_outline'],
#bridge[render='1_outline']{
  /* -- colors & styles -- */
  /*line-cap: round;*/
  [bridge=1],
  [tunnel=1] {
    line-cap: butt;
  }
  /*line-join: round;*/
  /*line-color: @standard_case;*/
  [bridge=1] { line-color: @standard_case * 0.8; }
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @black;
    [bridge=1] {
      [zoom <= 10] { line-width: (@huge + @outline)*@z10_road; }
      [zoom = 11] { line-width: (@huge + @outline)*@z11_road; }
      [zoom = 12] { line-width: (@huge + @outline)*@z12_road; }
      [zoom = 13] { line-width: (@huge + @outline)*@z13_road; }
      [zoom = 14] { line-width: (@huge + @outline)*@z14_road; }
      [zoom = 15] { line-width: (@huge + @outline)*@z15_road; }
      [zoom = 16] { line-width: (@huge + @outline)*@z16_road; }
      [zoom = 17] { line-width: (@huge + @outline)*@z17_road; }
      [zoom = 18] { line-width: (@huge + @outline)*@z18_road; }
      [zoom = 19] { line-width: (@huge + @outline)*@z19_road; }
      [zoom >= 20] { line-width: (@huge + @outline)*@z20_road; }
      line-color: @black * 0.8;
    }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_case;
    [bridge=1] { line-color: @trunk_case * 0.8; }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_case;
    [bridge=1] {
      [zoom <= 10] { line-width: (@large + @outline)*@z10_road; }
      [zoom = 11] { line-width: (@large + @outline)*@z11_road; }
      [zoom = 12] { line-width: (@large + @outline)*@z12_road; }
      [zoom = 13] { line-width: (@large + @outline)*@z13_road; }
      [zoom = 14] { line-width: (@large + @outline)*@z14_road; }
      [zoom = 15] { line-width: (@large + @outline)*@z15_road; }
      [zoom = 16] { line-width: (@large + @outline)*@z16_road; }
      [zoom = 17] { line-width: (@large + @outline)*@z17_road; }
      [zoom = 18] { line-width: (@large + @outline)*@z18_road; }
      [zoom = 19] { line-width: (@large + @outline)*@z19_road; }
      [zoom >= 20] { line-width: (@large + @outline)*@z20_road; }
      line-color: @primary_case * 0.8;
    }
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary_case;
    [bridge=1] {
      [zoom <= 10] { line-width: 0; }
      [zoom = 11] { line-width: (@large + @outline)*@z11_road; }
      [zoom = 12] { line-width: (@large + @outline)*@z12_road; }
      [zoom = 13] { line-width: (@large + @outline)*@z13_road; }
      [zoom = 14] { line-width: (@large + @outline)*@z14_road; }
      [zoom = 15] { line-width: (@large + @outline)*@z15_road; }
      [zoom = 16] { line-width: (@large + @outline)*@z16_road; }
      [zoom = 17] { line-width: (@large + @outline)*@z17_road; }
      [zoom = 18] { line-width: (@large + @outline)*@z18_road; }
      [zoom = 19] { line-width: (@large + @outline)*@z19_road; }
      [zoom >= 20] { line-width: (@large + @outline)*@z20_road; }
      line-color: @secondary_case;
    }
  }
  [stylegroup='railway'] {
    line-color: #111;
    [bridge=1] {
      [zoom <= 10] { line-width: (@large + @outline)*@z10_road; }
      [zoom = 11] { line-width: (@large + @outline)*@z11_road; }
      [zoom = 12] { line-width: (@large + @outline)*@z12_road; }
      [zoom = 13] { line-width: (@large + @outline)*@z13_road; }
      [zoom = 14] { line-width: (@large + @outline)*@z14_road; }
      [zoom = 15] { line-width: (@large + @outline)*@z15_road; }
      [zoom = 16] { line-width: (@large + @outline)*@z16_road; }
      [zoom = 17] { line-width: (@large + @outline)*@z17_road; }
      [zoom = 18] { line-width: (@large + @outline)*@z18_road; }
      [zoom = 19] { line-width: (@large + @outline)*@z19_road; }
      [zoom >= 20] { line-width: (@large + @outline)*@z20_road; }
      line-color: @secondary_case;
    }
    [type='disused'] { line-opacity: 0.5; }
  }
  [tunnel=1] { line-dasharray: 3,3; }

  [stylegroup='minorroad'],
  [stylegroup='service'][zoom >= 12] {
    [bridge=1] {
      [zoom <= 10] { line-width: 0; }
      [zoom = 11] { line-width: (@medium + @outline)*@z11_road; }
      [zoom = 12] { line-width: (@medium + @outline)*@z12_road; }
      [zoom = 13] { line-width: (@medium + @outline)*@z13_road; }
      [zoom = 14] { line-width: (@medium + @outline)*@z14_road; }
      [zoom = 15] { line-width: (@medium + @outline)*@z15_road; }
      [zoom = 16] { line-width: (@medium + @outline)*@z16_road; }
      [zoom = 17] { line-width: (@medium + @outline)*@z17_road; }
      [zoom = 18] { line-width: (@medium + @outline)*@z18_road; }
      [zoom = 19] { line-width: (@medium + @outline)*@z19_road; }
      [zoom >= 20] { line-width: (@medium + @outline)*@z20_road; }
    }
  }
  [stylegroup='noauto'][zoom >= 13] {
      line-dasharray: 8, 8;
      line-color: @black;
      line-join: round;
      [zoom = 13] { line-width: @tiny*@z13_road; }
      [zoom = 14] { line-width: @tiny*@z14_road; }
      [zoom = 15] { line-width: @tiny*@z15_road; }
      [zoom = 16] { line-width: @tiny*@z16_road; }
      [zoom = 17] { line-width: @tiny*@z17_road; line-dasharray: 16, 16;}
      [zoom = 18] { line-width: @tiny*@z18_road; line-dasharray: 32, 32;}
      [zoom = 19] { line-width: @tiny*@z19_road; line-dasharray: 64, 64;}
      [zoom >= 20] { line-width: @tiny*@z20_road; line-dasharray: 64, 64;}

      [trail_visibility='bad'], [trail_visibility='horrible'] {
          [zoom >= 15] {
              line-dasharray: 8, 16;
              [zoom = 17] { line-dasharray: 16, 32;}
              [zoom = 18] { line-dasharray: 32, 64;}
              [zoom = 19] { line-dasharray: 64, 128;}
              [zoom >= 20] { line-dasharray: 64, 128;}
          }
      }
  }

  /* -- widths -- */
  [stylegroup='motorway'] {
    [zoom <= 10] { line-width: (@large + @outline)*@z10_road; }
    [zoom = 11] { line-width: (@large + @outline)*@z11_road; }
    [zoom = 12] { line-width: (@large + @outline)*@z12_road; }
    [zoom = 13] { line-width: (@large + @outline)*@z13_road; }
    [zoom = 14] { line-width: (@large + @outline)*@z14_road; }
    [zoom = 15] { line-width: (@large + @outline)*@z15_road; }
    [zoom = 16] { line-width: (@large + @outline)*@z16_road; }
    [zoom = 17] { line-width: (@large + @outline)*@z17_road; }
    [zoom = 18] { line-width: (@large + @outline)*@z18_road; }
    [zoom = 19] { line-width: (@large + @outline)*@z19_road; }
    [zoom >= 20] { line-width: (@large + @outline)*@z20_road; }
  }
  [stylegroup='mainroad'] {
    [zoom <= 10] { line-width: (@large + @outline*1.5)*@z10_road; }
    [zoom = 11] { line-width: (@large + @outline*1.5)*@z11_road; }
    [zoom = 12] { line-width: (@large + @outline*1.5)*@z12_road; }
    [zoom = 13] { line-width: (@large + @outline*1.5)*@z13_road; }
    [zoom = 14] { line-width: (@large + @outline*1.5)*@z14_road; }
    [zoom = 15] { line-width: (@large + @outline*1.5)*@z15_road; }
    [zoom = 16] { line-width: (@large + @outline*1.5)*@z16_road; }
    [zoom = 17] { line-width: (@large + @outline*1.5)*@z17_road; }
    [zoom = 18] { line-width: (@large + @outline*1.5)*@z18_road; }
    [zoom = 19] { line-width: (@large + @outline*1.5)*@z19_road; }
    [zoom >= 20] { line-width: (@large + @outline*1.5)*@z20_road; }
  }
  [stylegroup='minorroad'] {
    [zoom <= 10] { line-width: 0; }
    [zoom = 11] { line-width: (@small + @outline)*@z11_road; }
    [zoom = 12] { line-width: (@small + @outline)*@z12_road; }
    [zoom = 13] { line-width: (@small + @outline)*@z13_road; }
    [zoom = 14] { line-width: (@small + @outline)*@z14_road; }
    [zoom = 15] { line-width: (@small + @outline)*@z15_road; }
    [zoom = 16] { line-width: (@small + @outline)*@z16_road; }
    [zoom = 17] { line-width: (@small + @outline)*@z17_road; }
    [zoom = 18] { line-width: (@small + @outline)*@z18_road; }
    [zoom = 19] { line-width: (@small + @outline)*@z19_road; }
    [zoom >= 20] { line-width: (@small + @outline)*@z20_road; }
  }
  [stylegroup='railway'] {
    [zoom <= 10] { line-width: (@small + @outline)*@z10_road; }
    [zoom = 11] { line-width: (@small + @outline)*@z11_road; }
    [zoom = 12] { line-width: (@small + @outline)*@z12_road; }
    [zoom = 13] { line-width: (@small + @outline)*@z13_road; }
    [zoom = 14] { line-width: (@small + @outline)*@z14_road; }
    [zoom = 15] { line-width: (@small + @outline)*@z15_road; }
    [zoom = 16] { line-width: (@small + @outline)*@z16_road; }
    [zoom = 17] { line-width: (@small + @outline)*@z17_road; }
    [zoom = 18] { line-width: (@small + @outline)*@z18_road; }
    [zoom = 19] { line-width: (@small + @outline)*@z19_road; }
    [zoom >= 20] { line-width: (@small + @outline)*@z20_road; }
  }
  [stylegroup='service'] {
      [zoom >= 12] {
          [tracktype='grade1'], [tracktype='grade2'] {
              line-color: @black;
              [zoom = 12] { line-width: (@small + @outline)*@z12_road; }
          }
      }
      [zoom >= 13] {
          line-color: @black;
          [zoom = 13] { line-width: (@small + @outline)*@z13_road; }
          [zoom = 14] { line-width: (@small + @outline)*@z14_road; }
          [zoom = 15] { line-width: (@small + @outline)*@z15_road; }
          [zoom = 16] { line-width: (@small + @outline)*@z16_road; }
          [zoom = 17] { line-width: (@small + @outline)*@z17_road; }
          [zoom = 18] { line-width: (@small + @outline)*@z18_road; }
          [zoom = 19] { line-width: (@small + @outline)*@z19_road; }
          [zoom >= 20] { line-width: (@small + @outline)*@z20_road; }
          [tracktype='grade3'] {
              /* same as no tracktype */
          }
          [tracktype='grade4'],
          [tracktype='grade5'],
          [trail_visibility='bad'],
          [trail_visibility='horrible'] {
              line-cap: butt;
              [zoom = 13] { line-dasharray: 8, 4;}
              [zoom = 14] { line-dasharray: 8, 4;}
              [zoom = 15] { line-dasharray: 8, 4;}
              [zoom = 16] { line-dasharray: 16, 8;}
              [zoom = 17] { line-dasharray: 32, 16;}
              [zoom = 18] { line-dasharray: 32, 16;}
              [zoom = 19] { line-dasharray: 32, 16;}
              [zoom >= 20] { line-dasharray: 32, 16;}
          }
      }
   }
}


/* This second group (roads) is the final layer for most of the roads */
/* elements, which will give the center of the roads (inner fill) */

#roads::middle,
#tunnel[render='3_inline'],
#bridge[render='3_inline']{
  /* -- colors & styles -- */
  /*line-color: @standard_fill;*/
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_fill;
    [tunnel=1] { line-color: lighten(@motorway_fill, 10%); }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_fill;
    [tunnel=1] { line-color: lighten(@trunk_fill, 10%); }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_fill;
    [tunnel=1] { line-color: lighten(@primary_fill, 10%); }
  }
  [type='secondary'],
  [type='secondary_link'] {
    line-color: @secondary_fill;
    [tunnel=1] { line-color: lighten(@secondary_fill, 10%); }
  }
  [stylegroup='railway'] {
    line-color: #fff;
    [type='disused'] { line-opacity: 0.67; }
  }
  [zoom >= 13] {
      [stylegroup='service'],
      [stylegroup='minorroad'],
      [stylegroup='mainroad'],
      [stylegroup='motorway'] {
          line-cap: round;
          line-join: round;
      }
  }
  [stylegroup='noauto'][zoom >= 13] { line-width: 0; }

  [tunnel=1] {
    line-cap: butt;
  }

  [stylegroup='minorroad'] {
    line-color: @secondary_fill;
  }

  /* -- widths -- */
  [stylegroup='motorway'] {
      [zoom <= 10] { line-width: @large*@z10_road; }
      [zoom = 11] { line-width: @large*@z11_road; }
      [zoom = 12] { line-width: @large*@z12_road; }
      [zoom = 13] { line-width: @large*@z13_road; }
      [zoom = 14] { line-width: @large*@z14_road; }
      [zoom = 15] { line-width: @large*@z15_road; }
      [zoom = 16] { line-width: @large*@z16_road; }
      [zoom = 17] { line-width: @large*@z17_road; }
      [zoom = 18] { line-width: @large*@z18_road; }
      [zoom = 19] { line-width: @large*@z19_road; }
      [zoom >= 20] { line-width: @large*@z20_road; }
  }
  [stylegroup='mainroad'] {
      [zoom <= 10] { line-width: @large*@z10_road; }
      [zoom = 11] { line-width: @large*@z11_road; }
      [zoom = 12] { line-width: @large*@z12_road; }
      [zoom = 13] { line-width: @large*@z13_road; }
      [zoom = 14] { line-width: @large*@z14_road; }
      [zoom = 15] { line-width: @large*@z15_road; }
      [zoom = 16] { line-width: @large*@z16_road; }
      [zoom = 17] { line-width: @large*@z17_road; }
      [zoom = 18] { line-width: @large*@z18_road; }
      [zoom = 19] { line-width: @large*@z19_road; }
      [zoom >= 20] { line-width: @large*@z20_road; }
  }
  [stylegroup='minorroad']{
      [zoom <= 10] { line-width: 0; }
      [zoom = 11] { line-width: @small*@z11_road; }
      [zoom = 12] { line-width: @small*@z12_road; }
      [zoom = 13] { line-width: @small*@z13_road; }
      [zoom = 14] { line-width: @small*@z14_road; }
      [zoom = 15] { line-width: @small*@z15_road; }
      [zoom = 16] { line-width: @small*@z16_road; }
      [zoom = 17] { line-width: @small*@z17_road; }
      [zoom = 18] { line-width: @small*@z18_road; }
      [zoom = 19] { line-width: @small*@z19_road; }
      [zoom >= 20] { line-width: @small*@z20_road; }
  }
  [stylegroup='railway'] {
      line-dasharray: 15, 15;
      [zoom <= 10] { line-width: @small*@z10_road; line-dasharray: 3, 3;}
      [zoom = 11] { line-width: @small*@z11_road; line-dasharray: 3, 3;}
      [zoom = 12] { line-width: @small*@z12_road; line-dasharray: 3, 3;}
      [zoom = 13] { line-width: @small*@z13_road; line-dasharray: 3, 3;}
      [zoom = 14] { line-width: @small*@z14_road; line-dasharray: 5, 5;}
      [zoom = 15] { line-width: @small*@z15_road; line-dasharray: 10, 10;}
      [zoom = 16] { line-width: @small*@z16_road; line-dasharray: 15, 15;}
      [zoom = 17] { line-width: @small*@z17_road; line-dasharray: 20, 20;}
      [zoom = 18] { line-width: @small*@z18_road; line-dasharray: 30, 30;}
      [zoom = 19] { line-width: @small*@z19_road; line-dasharray: 40, 40;}
      [zoom >= 20] { line-width: @small*@z20_road; line-dasharray: 40, 40;}
  }
  [stylegroup='service'] {
      [zoom >= 12] {
          [tracktype='grade1'], [tracktype='grade2'] {
              line-color: @secondary_fill;
              [zoom = 12] { line-width: @small*@z12_road; }
              [zoom = 13] { line-width: @small*@z13_road; }
              [zoom = 14] { line-width: @small*@z14_road; }
              [zoom = 15] { line-width: @small*@z15_road; }
              [zoom = 16] { line-width: @small*@z16_road; }
              [zoom = 17] { line-width: @small*@z17_road; }
              [zoom = 18] { line-width: @small*@z18_road; }
              [zoom = 19] { line-width: @small*@z19_road; }
              [zoom >= 20] { line-width: @small*@z20_road; }
          }
      }
      [zoom >= 13] {
          line-color: @standard_fill;
          [zoom = 13] { line-width: @small*@z13_road; }
          [zoom = 14] { line-width: @small*@z14_road; }
          [zoom = 15] { line-width: @small*@z15_road; }
          [zoom = 16] { line-width: @small*@z16_road; }
          [zoom = 17] { line-width: @small*@z17_road; }
          [zoom = 18] { line-width: @small*@z18_road; }
          [zoom = 19] { line-width: @small*@z19_road; }
          [zoom >= 20] { line-width: @small*@z20_road; }
          [tracktype='grade3'] {
              /* same as no tracktype */
          }
          [tracktype='grade4'] {
              line-color: @black;
              [zoom = 13] { line-width: @outline/2*@z13_road; line-offset: ((@small+@outline)/2*@z13_road)-0.5; }
              [zoom = 14] { line-width: @outline/2*@z14_road; line-offset: ((@small+@outline)/2*@z14_road)-0.5; }
              [zoom = 15] { line-width: @outline/2*@z15_road; line-offset: ((@small+@outline)/2*@z15_road)-0.5; }
              [zoom = 16] { line-width: @outline/2*@z16_road; line-offset: ((@small+@outline)/2*@z16_road)-0.5; }
              [zoom = 17] { line-width: @outline/2*@z17_road; line-offset: ((@small+@outline)/2*@z17_road)-0.5; }
              [zoom = 18] { line-width: @outline/2*@z18_road; line-offset: ((@small+@outline)/2*@z18_road)-0.5; }
              [zoom = 19] { line-width: @outline/2*@z19_road; line-offset: ((@small+@outline)/2*@z19_road)-0.5; }
              [zoom >= 20] { line-width: @outline/2*@z20_road; line-offset: ((@small+@outline)/2*@z20_road)-0.5; }
          }
          [tracktype='grade5'], [trail_visibility='bad'], [trail_visibility='horrible'] {
              line-dasharray: 16, 8;
              line-cap: butt;
              [zoom = 13] { line-width: @small*@z13_road; line-dasharray: 8, 4;}
              [zoom = 14] { line-width: @small*@z14_road; line-dasharray: 8, 4;}
              [zoom = 15] { line-width: @small*@z15_road; line-dasharray: 8, 4;}
              [zoom = 16] { line-width: @small*@z16_road; line-dasharray: 16, 8;}
              [zoom = 17] { line-width: @small*@z17_road; line-dasharray: 32, 16;}
              [zoom = 18] { line-width: @small*@z18_road; line-dasharray: 32, 16;}
              [zoom = 19] { line-width: @small*@z19_road; line-dasharray: 32, 16;}
              [zoom >= 20] { line-width: @small*@z20_road; line-dasharray: 32, 16;}
          }
      }
  }
}



/* This third layer (roads::top) is the "top" layer of some special roads */
/* elements that needs 3 superimposed layer for their rendering. */

#roads::top {
  [type='motorway'],
  [type='motorway_link'] {
      line-color: @background;
      [zoom <= 10] { line-width: @outline*@z10_road; line-dasharray: 2, 2;}
      [zoom = 11] { line-width: @outline*@z11_road; line-dasharray: 2, 2;}
      [zoom = 12] { line-width: @outline*@z12_road; line-dasharray: 2, 2;}
      [zoom = 13] { line-width: @outline*@z13_road; line-dasharray: 2, 2;}
      [zoom = 14] { line-width: @outline*@z14_road; line-dasharray: 2, 2;}
      [zoom = 15] { line-width: @outline*@z15_road; line-dasharray: 3, 3;}
      [zoom = 16] { line-width: @outline*@z16_road; line-dasharray: 5, 5;}
      [zoom = 17] { line-width: @outline*@z17_road; line-dasharray: 10, 10;}
      [zoom = 18] { line-width: @outline*@z18_road; line-dasharray: 20, 20;}
      [zoom = 19] { line-width: @outline*@z19_road; line-dasharray: 30, 30;}
      [zoom >= 20] { line-width: @outline*@z20_road; line-dasharray: 40, 40;}
  }

  [stylegroup='noauto'][zoom >= 13] { line-width: 0; }

  [stylegroup='service'] {
      [zoom >= 12] {
          [tracktype='grade1'], [tracktype='grade2'],  {
              [zoom = 12] { line-width: @small*@z12_road; }
              [zoom = 13] { line-width: @small*@z13_road; }
              [zoom = 14] { line-width: @small*@z14_road; }
              [zoom = 15] { line-width: @small*@z15_road; }
              [zoom = 16] { line-width: @small*@z16_road; }
              [zoom = 17] { line-width: @small*@z17_road; }
              [zoom = 18] { line-width: @small*@z18_road; }
              [zoom = 19] { line-width: @small*@z19_road; }
              [zoom >= 20] { line-width: @small*@z20_road; }
              line-color: @background;
              [tracktype='grade1'] { line-dasharray: 20, 20; }
              [tracktype='grade2'] { line-dasharray: 20, 10; }
          }
      }
      [zoom >= 13] {
          [tracktype='grade4'] {
              [zoom = 13] { line-width: @small*@z13_road; }
              [zoom = 14] { line-width: @small*@z14_road; }
              [zoom = 15] { line-width: @small*@z15_road; }
              [zoom = 16] { line-width: @small*@z16_road; }
              [zoom = 17] { line-width: @small*@z17_road; }
              [zoom = 18] { line-width: @small*@z18_road; }
              [zoom = 19] { line-width: @small*@z19_road; }
              [zoom >= 20] { line-width: @small*@z20_road; }
              line-color: @background;
          }
      }
  }
}


/* ---- Bridge fill for dashed lines -------------------------------- */
#tunnel[render='2_line'],
#bridge[render='2_line']{
  /* -- colors & styles -- */
  [stylegroup='noauto'] {
    line-color: @land;
    line-width: 0;
    line-join: round;
  }
  [stylegroup='railway'] {
    line-color: @land;
    line-join: round;
  }
  /* -- widths -- */
  [stylegroup='railway'] {
    [zoom <= 10] { line-width: @outline*@z10_road*1.5; }
    [zoom = 11] { line-width: @outline*@z11_road*1.5; }
    [zoom = 12] { line-width: @outline*@z12_road*1.5; }
    [zoom = 13] { line-width: @outline*@z13_road*1.5; }
    [zoom = 14] { line-width: @outline*@z14_road*1.5; }
    [zoom = 15] { line-width: @outline*@z15_road*1.5; }
    [zoom = 16] { line-width: @outline*@z16_road*1.5; }
    [zoom = 17] { line-width: @outline*@z17_road*1.5; }
    [zoom = 18] { line-width: @outline*@z18_road*1.5; }
    [zoom = 19] { line-width: @outline*@z19_road*1.5; }
    [zoom >= 20] { line-width: @outline*@z20_road*1.5; }
  }
}

/* ---- Bridge symbol layer -------------------------------- */
#bridge_symbol {
    [zoom >= 14] {
        [zoom = 14] { marker-height: @bridge_marker*@z14_road; }
        [zoom = 15] { marker-height: @bridge_marker*@z15_road; }
        [zoom = 16] { marker-height: @bridge_marker*@z16_road; }
        [zoom = 17] { marker-height: @bridge_marker*@z17_road; }
        [zoom = 18] { marker-height: @bridge_marker*@z18_road; }
        [zoom = 19] { marker-height: @bridge_marker*@z19_road; }
        [zoom >= 20] { marker-height: @bridge_marker*@z20_road; }
        marker-file: url(../img/bridge.svg);
        marker-transform: rotate([orientation]);
    }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */

#aeroway {
  line-color: @aeroway;
  line-cap: butt;
  line-join: miter;
  [type='runway'] {
    [zoom <= 10] { line-width: @huge*@z10; }
    [zoom = 11] { line-width: @huge*@z11; }
    [zoom = 12] { line-width: @huge*@z12; }
    [zoom = 13] { line-width: @huge*@z13; }
    [zoom = 14] { line-width: @huge*@z14; }
    [zoom = 15] { line-width: @huge*@z15; }
    [zoom = 16] { line-width: @huge*@z16; }
    [zoom = 17] { line-width: @huge*@z17; }
    [zoom = 18] { line-width: @huge*@z18; }
    [zoom = 19] { line-width: @huge*@z19; }
    [zoom >= 20] { line-width: @huge*@z20; }
    line-color: @darkgray;
  }
  [type='taxiway'] {
    [zoom <= 10] { line-width: @tiny*@z10; }
    [zoom = 11] { line-width: @tiny*@z11; }
    [zoom = 12] { line-width: @tiny*@z12; }
    [zoom = 13] { line-width: @tiny*@z13; }
    [zoom = 14] { line-width: @tiny*@z14; }
    [zoom = 15] { line-width: @tiny*@z15; }
    [zoom = 16] { line-width: @tiny*@z16; }
    [zoom = 17] { line-width: @tiny*@z17; }
    [zoom = 18] { line-width: @tiny*@z18; }
    [zoom = 19] { line-width: @tiny*@z19; }
    [zoom >= 20] { line-width: @tiny*@z20; }
  }
}


/* ================================================================== */
/* LINEAR FEATURES
/* ================================================================== */

#linear_features {
    [zoom >= 14] {
        [type = 'hedge'], [type = 'tree_row'] {
            line-color: darken(@green,30%);
            line-dasharray: 3, 5;
            [zoom = 14] { line-width: @tiny*@z14_marker; }
            [zoom = 15] { line-width: @tiny*@z15_marker; }
            [zoom = 16] { line-width: @tiny*@z16_marker; }
            [zoom = 17] { line-width: @tiny*@z17_marker; line-dasharray: 3, 5; }
            [zoom = 18] { line-width: @tiny*@z18_marker; line-dasharray: 6, 10; }
            [zoom = 19] { line-width: @tiny*@z19_marker; line-dasharray: 12, 20; }
            [zoom >= 20] { line-width: @tiny*@z20_marker; line-dasharray: 24, 40; }
        }
    }

    [type = 'line'] {
        [zoom >= 12] {
            line-color: @black;
            [zoom = 12] { line-width: @outline*@z12_marker; }
            [zoom = 13] { line-width: @outline*@z13_marker; }
            [zoom = 14] { line-width: @outline*@z14_marker; }
            [zoom = 15] { line-width: @outline*@z15_marker; }
            [zoom = 16] { line-width: @outline*@z16_marker; }
            [zoom = 17] { line-width: @outline*@z17_marker; }
            [zoom = 18] { line-width: @outline*@z18_marker; }
            [zoom = 19] { line-width: @outline*@z19_marker; }
            [zoom >= 20] { line-width: @outline*@z20_marker; }
        }
    }
    [zoom >= 16] {
        [type = 'embankment'] {
            line-pattern-file: url(../img/embankment.svg);
        }
    }
    [zoom >= 14] {
        [type = 'cliff'] {
            line-pattern-file: url(../img/cliff.svg);
        }
    }

    [type = 'cutline'] {
        [zoom >= 13] {
            line-dasharray: 25, 15;
            line-color: @darkgray;
            [zoom = 13] { line-width: @outline*@z14; }
            [zoom = 14] { line-width: @outline*@z14; }
            [zoom = 15] { line-width: @outline*@z15; }
            [zoom = 16] { line-width: @outline*@z16; }
            [zoom = 17] { line-width: @outline*@z17_marker; line-dasharray: 35, 22;}
            [zoom = 18] { line-width: @outline*@z18_marker; line-dasharray: 50, 30;}
            [zoom = 19] { line-width: @outline*@z19_marker; line-dasharray: 75, 45;}
            [zoom >= 20] { line-width: @outline*@z20_marker; line-dasharray: 100, 60;}

        }
    }
}

/******************************************************************* */


/* ================================================================== */
/* BOUNDARIES
/* ================================================================== */

#boundaries {
  line-color: @admin;
  line-dasharray: 20, 10, 5;
  [admin_level = "6"] {
    [zoom <= 10] { line-width: @small*@z10; }
    [zoom = 11] { line-width: @small*@z11; }
    [zoom = 12] { line-width: @small*@z12; }
    [zoom = 13] { line-width: @small*@z13; }
    [zoom = 14] { line-width: @small*@z14; }
    [zoom = 15] { line-width: @small*@z15; }
    [zoom = 16] { line-width: @small*@z16; }
    [zoom = 17] { line-width: @small*@z17; }
    [zoom = 18] { line-width: @small*@z18; }
    [zoom = 19] { line-width: @small*@z19; }
    [zoom >= 20] { line-width: @small*@z20; }
  }
}

/******************************************************************* */
