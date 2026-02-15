/orchestrator.sh
--------------------------------
#!/bin/bash

INPUT="$1"

node - <<EOF
import { runMAX } from "./max-engine/engine.js";

const input = ${INPUT ? JSON.stringify(INPUT) : "null"};
const result = runMAX(input);

console.log(JSON.stringify(result, null, 2));
EOF
--------------------------------
