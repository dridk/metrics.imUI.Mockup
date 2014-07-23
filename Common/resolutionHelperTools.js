.pragma library

var GRID_COLUMNS = 12,
    GRID_COLUMN_WIDTH = 8,
    UNIT_SIZE = 1;

function init (o) {
    var ir = Math.sqrt(o.definition.intendedResolution.width ^ 2 + o.definition.intendedResolution.height ^ 2),
        cr = Math.sqrt(o.definition.currentResolution.width ^ 2 + o.definition.currentResolution.height ^ 2);
    UNIT_SIZE = cr/ir;
    console.log(UNIT_SIZE);
}

function em(i){return i*UNIT_SIZE}
function column(i){return i*em(GRID_COLUMN_WIDTH)}
