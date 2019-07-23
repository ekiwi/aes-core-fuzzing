circuit aes_core:
  module control_unit:
    input aes_mode: UInt<2>
    output bypass_key_en: UInt<1>
    output bypass_rk: UInt<1>
    input clk: UInt<1>
    output col_en: UInt<4>
    output col_sel: UInt<2>
    input disable_core: UInt<1>
    output encrypt_decrypt: UInt<1>
    output end_comp: UInt<1>
    output iv_cnt_en: UInt<1>
    output iv_cnt_sel: UInt<1>
    output key_derivation_en: UInt<1>
    output key_en: UInt<4>
    output key_gen: UInt<1>
    output key_init: UInt<1>
    output key_out_sel: UInt<2>
    output key_sel: UInt<1>
    output last_round: UInt<1>
    output mode_cbc: UInt<1>
    output mode_ctr: UInt<1>
    input operation_mode: UInt<2>
    output rk_sel: UInt<2>
    output round: UInt<4>
    input rst_n: UInt<1>
    output sbox_sel: UInt<3>
    input start: UInt<1>

    wire _auto_rtlil_cc_1906_Mux_2362: UInt<4>
    wire _auto_rtlil_cc_1836_ReduceOr_2360: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2358: UInt<4>
    wire _auto_rtlil_cc_1836_ReduceOr_2356: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2354: UInt<4>
    wire _auto_rtlil_cc_1863_Or_2352: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2350: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2348: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2346: UInt<4>
    wire _auto_rtlil_cc_1863_Or_2344: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2342: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2340: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2338: UInt<4>
    wire _auto_rtlil_cc_1836_ReduceOr_2336: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2334: UInt<4>
    wire _auto_rtlil_cc_1863_Or_2332: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2330: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2328: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2326: UInt<4>
    wire _auto_rtlil_cc_1863_Or_2324: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2322: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2320: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2318: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2316: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2314: UInt<4>
    wire _auto_rtlil_cc_1836_ReduceOr_2312: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2310: UInt<4>
    wire _auto_rtlil_cc_1836_ReduceOr_2308: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2306: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2304: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2302: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2300: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2298: UInt<4>
    wire _auto_rtlil_cc_1863_Or_2296: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2294: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2292: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2290: UInt<4>
    wire _auto_rtlil_cc_1832_Not_2288: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2286: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2284: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2282: UInt<1>
    wire _auto_rtlil_cc_1832_Not_2280: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2278: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2276: UInt<3>
    wire _auto_rtlil_cc_1863_Or_2274: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2272: UInt<3>
    wire _auto_rtlil_cc_1906_Mux_2270: UInt<3>
    wire _auto_rtlil_cc_1906_Mux_2268: UInt<3>
    wire _auto_rtlil_cc_1832_Not_2266: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2264: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2262: UInt<2>
    wire _auto_rtlil_cc_1863_Or_2260: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2258: UInt<2>
    wire _auto_rtlil_cc_1906_Mux_2256: UInt<2>
    wire _auto_rtlil_cc_1832_Not_2254: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2252: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2250: UInt<2>
    wire _auto_rtlil_cc_1836_ReduceOr_2248: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2246: UInt<2>
    wire _auto_rtlil_cc_1863_Or_2244: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2242: UInt<2>
    wire _auto_rtlil_cc_1906_Mux_2240: UInt<2>
    wire _auto_rtlil_cc_1906_Mux_2238: UInt<2>
    wire _auto_rtlil_cc_1906_Mux_2236: UInt<2>
    wire _auto_rtlil_cc_1832_Not_2234: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2232: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2230: UInt<4>
    wire _auto_rtlil_cc_1836_ReduceOr_2228: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2226: UInt<4>
    wire _auto_rtlil_cc_1863_Or_2224: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2222: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2220: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2218: UInt<4>
    wire _auto_rtlil_cc_1906_Mux_2216: UInt<4>
    wire _auto_rtlil_cc_1832_Not_2214: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2212: UInt<1>
    wire _0_rd_count_3_0_: UInt<4>
    wire _0_state_3_0_: UInt<4>
    wire _2_col_en_3_0_: UInt<4>
    wire _2_col_sel_1_0_: UInt<2>
    wire _2_iv_cnt_en_0_0_: UInt<1>
    wire _2_key_derivation_en_0_0_: UInt<1>
    wire _2_key_en_3_0_: UInt<4>
    wire _2_key_sel_0_0_: UInt<1>
    wire _2_next_state_3_0_: UInt<4>
    wire _3_col_en_3_0_: UInt<4>
    wire _3_col_sel_1_0_: UInt<2>
    wire _3_key_en_3_0_: UInt<4>
    wire _3_next_state_3_0_: UInt<4>
    wire _4_col_sel_1_0_: UInt<2>
    wire _4_key_en_3_0_: UInt<4>
    wire _4_next_state_3_0_: UInt<4>
    wire _5_key_en_3_0_: UInt<4>
    wire _5_next_state_3_0_: UInt<4>
    wire _6_col_sel_1_0_: UInt<2>
    wire _6_key_en_3_0_: UInt<4>
    wire _6_next_state_3_0_: UInt<4>
    wire _7_col_sel_1_0_: UInt<2>
    wire _7_key_en_3_0_: UInt<4>
    wire _add_rtl_control_unit_v_595_421_Y: UInt<4>
    wire _auto_opt_reduce_cc_132_opt_mux_2174: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2176: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2178: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2180: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2182: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2184: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2192: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2194: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2196: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2204: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2206: UInt<1>
    wire _auto_opt_reduce_cc_132_opt_mux_2208: UInt<1>
    wire _eq_rtl_control_unit_v_254_340_Y: UInt<1>
    wire _eq_rtl_control_unit_v_255_343_Y: UInt<1>
    wire _eq_rtl_control_unit_v_255_345_Y: UInt<1>
    wire _eq_rtl_control_unit_v_255_347_Y: UInt<1>
    wire _eq_rtl_control_unit_v_255_349_Y: UInt<1>
    wire _eq_rtl_control_unit_v_365_373_Y: UInt<1>
    wire _eq_rtl_control_unit_v_591_417_Y: UInt<1>
    wire _eq_rtl_control_unit_v_600_423_Y: UInt<1>
    wire _eq_rtl_control_unit_v_600_424_Y: UInt<1>
    wire _logic_and_rtl_control_unit_v_332_370_Y: UInt<1>
    wire _logic_and_rtl_control_unit_v_480_384_Y: UInt<1>
    wire _logic_and_rtl_control_unit_v_480_386_Y: UInt<1>
    wire _logic_and_rtl_control_unit_v_480_387_Y: UInt<1>
    wire _logic_and_rtl_control_unit_v_591_419_Y: UInt<1>
    wire _logic_not_rtl_control_unit_v_428_378_Y: UInt<1>
    wire _logic_or_rtl_control_unit_v_254_342_Y: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_344_Y: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_346_Y: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_348_Y: UInt<1>
    wire _logic_or_rtl_control_unit_v_480_388_Y: UInt<1>
    wire _logic_or_rtl_control_unit_v_591_420_Y: UInt<1>
    wire _procmux_1151_Y: UInt<4>
    wire _procmux_1154_Y: UInt<4>
    wire _procmux_1175_CMP: UInt<1>
    wire _procmux_1245_CMP: UInt<1>
    wire _procmux_1270_CMP: UInt<1>
    wire _procmux_1297_CMP: UInt<1>
    wire _procmux_1358_CMP: UInt<1>
    wire _procmux_1391_CMP: UInt<1>
    wire _procmux_1426_CMP: UInt<1>
    wire _procmux_1459_CMP: UInt<1>
    wire _procmux_1641_CMP: UInt<1>
    wire _procmux_1643_CMP: UInt<1>
    wire _procmux_1680_CMP: UInt<1>
    wire _procmux_1688_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_289_359_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_293_360_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_301_362_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_307_364_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_311_365_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_320_367_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_324_368_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_328_369_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_335_371_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_352_372_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_416_376_Y: UInt<2>
    wire _ternary_rtl_control_unit_v_417_377_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_455_380_Y: UInt<2>
    wire _ternary_rtl_control_unit_v_456_381_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_474_383_Y: UInt<2>
    wire _ternary_rtl_control_unit_v_485_390_Y: UInt<2>
    wire _ternary_rtl_control_unit_v_492_391_Y: UInt<4>
    wire _ternary_rtl_control_unit_v_544_412_Y: UInt<4>
    wire enc_dec: UInt<1>
    wire first_round: UInt<1>
    wire next_state: UInt<4>
    wire op_key_derivation: UInt<1>
    wire op_mode: UInt<2>
    wire rd_count: UInt<4>
    wire rd_count_en: UInt<1>
    wire state: UInt<4>
    wire _auto_pmuxtree_cc_37_or_generator_2359: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2357: UInt<4>
    wire _auto_pmuxtree_cc_37_or_generator_2355: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2353: UInt<4>
    wire _auto_pmuxtree_cc_35_or_generator_2351: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2349: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2347: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2345: UInt<4>
    wire _auto_pmuxtree_cc_35_or_generator_2343: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2341: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2339: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2337: UInt<4>
    wire _auto_pmuxtree_cc_37_or_generator_2335: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2333: UInt<4>
    wire _auto_pmuxtree_cc_35_or_generator_2331: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2329: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2327: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2325: UInt<4>
    wire _auto_pmuxtree_cc_35_or_generator_2323: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2321: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2319: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2315: UInt<4>
    wire _auto_pmuxtree_cc_37_or_generator_2311: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2309: UInt<4>
    wire _auto_pmuxtree_cc_37_or_generator_2307: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2305: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2303: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2301: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2299: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2297: UInt<4>
    wire _auto_pmuxtree_cc_35_or_generator_2295: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2293: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2291: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2289: UInt<4>
    wire _auto_pmuxtree_cc_101_execute_2287: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2285: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2281: UInt<1>
    wire _auto_pmuxtree_cc_101_execute_2279: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2277: UInt<1>
    wire _auto_pmuxtree_cc_35_or_generator_2273: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2271: UInt<3>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2269: UInt<3>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2267: UInt<3>
    wire _auto_pmuxtree_cc_101_execute_2265: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2263: UInt<1>
    wire _auto_pmuxtree_cc_35_or_generator_2259: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2257: UInt<2>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2255: UInt<2>
    wire _auto_pmuxtree_cc_101_execute_2253: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2251: UInt<1>
    wire _auto_pmuxtree_cc_37_or_generator_2247: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2245: UInt<2>
    wire _auto_pmuxtree_cc_35_or_generator_2243: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2241: UInt<2>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2239: UInt<2>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2237: UInt<2>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2235: UInt<2>
    wire _auto_pmuxtree_cc_101_execute_2233: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2231: UInt<1>
    wire _auto_pmuxtree_cc_37_or_generator_2227: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2225: UInt<4>
    wire _auto_pmuxtree_cc_35_or_generator_2223: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2221: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2219: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2217: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2215: UInt<4>
    wire _auto_pmuxtree_cc_101_execute_2213: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2211: UInt<1>
    wire _add_rtl_control_unit_v_595_421: UInt<4>
    wire _auto_opt_reduce_cc_126_opt_mux_2173: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2183: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2185: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2191: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2193: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2195: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2197: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2199: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2201: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2203: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2205: UInt<1>
    wire _auto_opt_reduce_cc_126_opt_mux_2207: UInt<1>
    wire _eq_rtl_control_unit_v_262_354: UInt<1>
    wire _eq_rtl_control_unit_v_263_355: UInt<1>
    wire _eq_rtl_control_unit_v_599_422: UInt<1>
    wire _eq_rtl_control_unit_v_600_423: UInt<1>
    wire _eq_rtl_control_unit_v_600_424: UInt<1>
    wire _logic_and_rtl_control_unit_v_332_370: UInt<1>
    wire _logic_and_rtl_control_unit_v_534_406: UInt<1>
    wire _logic_and_rtl_control_unit_v_534_408: UInt<1>
    wire _logic_and_rtl_control_unit_v_547_413: UInt<1>
    wire _logic_and_rtl_control_unit_v_591_419: UInt<1>
    wire _logic_not_rtl_control_unit_v_534_407: UInt<1>
    wire _logic_or_rtl_control_unit_v_254_342: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_344: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_346: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_348: UInt<1>
    wire _logic_or_rtl_control_unit_v_255_350: UInt<1>
    wire _logic_or_rtl_control_unit_v_534_410: UInt<1>
    wire _logic_or_rtl_control_unit_v_591_420: UInt<1>
    wire _logic_or_rtl_control_unit_v_600_425: UInt<1>
    wire _or_rtl_control_unit_v_257_351: UInt<1>
    reg _procdff_2123: UInt<4>, asClock(clk)
    reg _procdff_2124: UInt<4>, asClock(clk)
    wire _procmux_1151: UInt<4>
    wire _procmux_1154: UInt<4>
    wire _procmux_1157: UInt<4>
    wire _procmux_1161: UInt<1>
    wire _procmux_1183: UInt<1>
    wire _procmux_1194: UInt<4>
    wire _procmux_1205: UInt<2>
    wire _procmux_1219: UInt<2>
    wire _procmux_1230: UInt<4>
    wire _procmux_1254: UInt<4>
    wire _procmux_1267: UInt<2>
    wire _procmux_1280: UInt<4>
    wire _procmux_1294: UInt<4>
    wire _procmux_1308: UInt<2>
    wire _procmux_1325: UInt<2>
    wire _procmux_1339: UInt<4>
    wire _procmux_1371: UInt<1>
    wire _procmux_1388: UInt<4>
    wire _procmux_1423: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2229: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2249: UInt<2>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2261: UInt<2>
    wire _procmux_1490: UInt<1>
    wire _procmux_1509: UInt<1>
    wire _procmux_1520: UInt<2>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2275: UInt<3>
    wire _procmux_1544: UInt<1>
    wire _procmux_1548: UInt<1>
    wire _procmux_1564: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2283: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2313: UInt<4>
    wire _procmux_1596: UInt<4>
    wire _procmux_1606: UInt<4>
    wire _procmux_1621: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2317: UInt<4>
    wire _procmux_1641_CMP0: UInt<1>
    wire _procmux_1642_CMP0: UInt<1>
    wire _procmux_1643_CMP0: UInt<1>
    wire _procmux_1644_CMP0: UInt<1>
    wire _procmux_1666: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2361: UInt<4>
    wire _procmux_1671_CMP0: UInt<1>
    wire _procmux_1672_CMP0: UInt<1>
    wire _procmux_1673_CMP0: UInt<1>
    wire _procmux_1674_CMP0: UInt<1>
    wire _procmux_1675_CMP0: UInt<1>
    wire _procmux_1676_CMP0: UInt<1>
    wire _procmux_1677_CMP0: UInt<1>
    wire _procmux_1678_CMP0: UInt<1>
    wire _procmux_1679_CMP0: UInt<1>
    wire _procmux_1680_CMP0: UInt<1>
    wire _procmux_1681_CMP0: UInt<1>
    wire _procmux_1682_CMP0: UInt<1>
    wire _procmux_1683_CMP0: UInt<1>
    wire _procmux_1684_CMP0: UInt<1>
    wire _procmux_1685_CMP0: UInt<1>
    wire _procmux_1686_CMP0: UInt<1>
    wire _procmux_1688: UInt<4>
    wire _procmux_1691: UInt<4>
    wire _ternary_rtl_control_unit_v_267_356: UInt<2>
    wire _ternary_rtl_control_unit_v_289_359: UInt<4>
    wire _ternary_rtl_control_unit_v_293_360: UInt<4>
    wire _ternary_rtl_control_unit_v_301_362: UInt<4>
    wire _ternary_rtl_control_unit_v_307_364: UInt<4>
    wire _ternary_rtl_control_unit_v_316_366: UInt<4>
    wire _ternary_rtl_control_unit_v_320_367: UInt<4>
    wire _ternary_rtl_control_unit_v_324_368: UInt<4>
    wire _ternary_rtl_control_unit_v_328_369: UInt<4>
    wire _ternary_rtl_control_unit_v_335_371: UInt<4>
    wire _ternary_rtl_control_unit_v_352_372: UInt<4>
    wire _ternary_rtl_control_unit_v_365_374: UInt<1>
    wire _ternary_rtl_control_unit_v_416_376: UInt<2>
    wire _ternary_rtl_control_unit_v_417_377: UInt<4>
    wire _ternary_rtl_control_unit_v_455_380: UInt<2>
    wire _ternary_rtl_control_unit_v_456_381: UInt<4>
    wire _ternary_rtl_control_unit_v_492_391: UInt<4>
    wire _ternary_rtl_control_unit_v_529_404: UInt<2>
    wire _ternary_rtl_control_unit_v_539_411: UInt<2>
    wire _ternary_rtl_control_unit_v_544_412: UInt<4>
    wire _0: UInt<1>
    wire _1: UInt<1>
    wire _2: UInt<4>
    wire _3: UInt<4>
    wire _4: UInt<2>
    wire _5: UInt<2>
    wire _6: UInt<3>
    wire _7: UInt<1>
    wire _8: UInt<4>
    wire _9: UInt<4>
    wire _10: UInt<4>


    _auto_pmuxtree_cc_37_or_generator_2359 <= orr(pad(cat(_auto_rtlil_cc_1836_ReduceOr_2336, cat(_auto_rtlil_cc_1863_Or_2332, cat(_procmux_1245_CMP, _procmux_1270_CMP))), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2357 <= mux(_auto_rtlil_cc_1836_ReduceOr_2356, _auto_rtlil_cc_1906_Mux_2346, _auto_rtlil_cc_1906_Mux_2354)
    _auto_pmuxtree_cc_37_or_generator_2355 <= orr(pad(cat(_auto_rtlil_cc_1863_Or_2344, cat(key_gen, _procmux_1358_CMP)), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2353 <= mux(_auto_rtlil_cc_1863_Or_2352, _auto_rtlil_cc_1906_Mux_2348, _auto_rtlil_cc_1906_Mux_2350)
    _auto_pmuxtree_cc_35_or_generator_2351 <= or(_procmux_1426_CMP, asUInt(_procmux_1391_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2349 <= mux(_procmux_1459_CMP, _ternary_rtl_control_unit_v_289_359_Y, _2_next_state_3_0_)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2347 <= mux(_procmux_1391_CMP, _6_key_en_3_0_, _ternary_rtl_control_unit_v_293_360_Y)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2345 <= mux(_auto_rtlil_cc_1863_Or_2344, _auto_rtlil_cc_1906_Mux_2340, _auto_rtlil_cc_1906_Mux_2342)
    _auto_pmuxtree_cc_35_or_generator_2343 <= or(_procmux_1680_CMP, asUInt(_procmux_1297_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2341 <= mux(key_gen, _4_next_state_3_0_, _ternary_rtl_control_unit_v_301_362_Y)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2339 <= mux(_procmux_1297_CMP, _ternary_rtl_control_unit_v_320_367_Y, _ternary_rtl_control_unit_v_311_365_Y)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2337 <= mux(_auto_rtlil_cc_1836_ReduceOr_2336, _auto_rtlil_cc_1906_Mux_2326, _auto_rtlil_cc_1906_Mux_2334)
    _auto_pmuxtree_cc_37_or_generator_2335 <= orr(pad(cat(_auto_rtlil_cc_1863_Or_2324, cat(_eq_rtl_control_unit_v_255_347_Y, _eq_rtl_control_unit_v_255_345_Y)), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2333 <= mux(_auto_rtlil_cc_1863_Or_2332, _auto_rtlil_cc_1906_Mux_2328, _auto_rtlil_cc_1906_Mux_2330)
    _auto_pmuxtree_cc_35_or_generator_2331 <= or(_procmux_1175_CMP, asUInt(_eq_rtl_control_unit_v_255_343_Y))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2329 <= mux(_procmux_1245_CMP, _ternary_rtl_control_unit_v_328_369_Y, _ternary_rtl_control_unit_v_324_368_Y)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2327 <= mux(_eq_rtl_control_unit_v_255_343_Y, UInt<4>("hc"), _5_next_state_3_0_)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2325 <= mux(_auto_rtlil_cc_1863_Or_2324, _auto_rtlil_cc_1906_Mux_2320, _auto_rtlil_cc_1906_Mux_2322)
    _auto_pmuxtree_cc_35_or_generator_2323 <= or(_eq_rtl_control_unit_v_255_349_Y, asUInt(_eq_rtl_control_unit_v_365_373_Y))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2321 <= mux(_eq_rtl_control_unit_v_255_347_Y, UInt<4>("he"), UInt<4>("hd"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2319 <= mux(_eq_rtl_control_unit_v_365_373_Y, UInt<4>("h0"), _6_next_state_3_0_)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2315 <= mux(_procmux_1643_CMP, UInt<4>("h4"), UInt<4>("h1"))
    _auto_pmuxtree_cc_37_or_generator_2311 <= orr(pad(cat(_auto_rtlil_cc_1863_Or_2296, cat(_eq_rtl_control_unit_v_255_345_Y, cat(_auto_opt_reduce_cc_132_opt_mux_2178, _procmux_1245_CMP))), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2309 <= mux(_auto_rtlil_cc_1836_ReduceOr_2308, _auto_rtlil_cc_1906_Mux_2302, _auto_rtlil_cc_1906_Mux_2306)
    _auto_pmuxtree_cc_37_or_generator_2307 <= orr(pad(cat(_procmux_1270_CMP, cat(_procmux_1297_CMP, key_gen)), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2305 <= mux(_procmux_1391_CMP, _3_key_en_3_0_, _auto_rtlil_cc_1906_Mux_2304)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2303 <= mux(_procmux_1426_CMP, _2_key_en_3_0_, UInt<4>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2301 <= mux(_procmux_1270_CMP, _6_key_en_3_0_, _auto_rtlil_cc_1906_Mux_2300)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2299 <= mux(_procmux_1297_CMP, _5_key_en_3_0_, UInt<4>("h1"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2297 <= mux(_auto_rtlil_cc_1863_Or_2296, _auto_rtlil_cc_1906_Mux_2290, _auto_rtlil_cc_1906_Mux_2294)
    _auto_pmuxtree_cc_35_or_generator_2295 <= or(_eq_rtl_control_unit_v_255_347_Y, asUInt(_eq_rtl_control_unit_v_255_349_Y))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2293 <= mux(_eq_rtl_control_unit_v_255_345_Y, UInt<4>("h3"), _auto_rtlil_cc_1906_Mux_2292)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2291 <= mux(_auto_opt_reduce_cc_132_opt_mux_2178, _4_key_en_3_0_, _7_key_en_3_0_)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2289 <= mux(_eq_rtl_control_unit_v_255_349_Y, UInt<4>("h8"), UInt<4>("h4"))
    _auto_pmuxtree_cc_101_execute_2287 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2286, 1))
    _auto_pmuxtree_cc_100_execute_2285 <= orr(pad(cat(_procmux_1426_CMP, cat(_procmux_1391_CMP, cat(key_gen, cat(_procmux_1297_CMP, cat(_procmux_1270_CMP, cat(_procmux_1245_CMP, cat(_auto_opt_reduce_cc_132_opt_mux_2178, cat(_eq_rtl_control_unit_v_255_345_Y, cat(_eq_rtl_control_unit_v_255_347_Y, _eq_rtl_control_unit_v_255_349_Y))))))))), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2281 <= mux(_auto_opt_reduce_cc_132_opt_mux_2208, _2_key_sel_0_0_, UInt<1>("h0"))
    _auto_pmuxtree_cc_101_execute_2279 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2278, 1))
    _auto_pmuxtree_cc_100_execute_2277 <= orr(pad(cat(_auto_opt_reduce_cc_132_opt_mux_2208, _auto_opt_reduce_cc_132_opt_mux_2192), 1))
    _auto_pmuxtree_cc_35_or_generator_2273 <= or(_auto_opt_reduce_cc_132_opt_mux_2178, asUInt(_auto_opt_reduce_cc_132_opt_mux_2176))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2271 <= mux(_auto_opt_reduce_cc_132_opt_mux_2180, UInt<3>("h2"), _auto_rtlil_cc_1906_Mux_2270)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2269 <= mux(_auto_opt_reduce_cc_132_opt_mux_2182, UInt<3>("h1"), UInt<3>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2267 <= mux(_auto_opt_reduce_cc_132_opt_mux_2176, UInt<3>("h4"), UInt<3>("h3"))
    _auto_pmuxtree_cc_101_execute_2265 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2264, 1))
    _auto_pmuxtree_cc_100_execute_2263 <= orr(pad(cat(_auto_opt_reduce_cc_132_opt_mux_2182, cat(_auto_opt_reduce_cc_132_opt_mux_2180, cat(_auto_opt_reduce_cc_132_opt_mux_2178, _auto_opt_reduce_cc_132_opt_mux_2176))), 1))
    _auto_pmuxtree_cc_35_or_generator_2259 <= or(_auto_opt_reduce_cc_132_opt_mux_2180, asUInt(_auto_opt_reduce_cc_132_opt_mux_2178))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2257 <= mux(_auto_opt_reduce_cc_132_opt_mux_2182, UInt<2>("h1"), UInt<2>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2255 <= mux(_auto_opt_reduce_cc_132_opt_mux_2178, UInt<2>("h3"), UInt<2>("h2"))
    _auto_pmuxtree_cc_101_execute_2253 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2252, 1))
    _auto_pmuxtree_cc_100_execute_2251 <= orr(pad(cat(_auto_opt_reduce_cc_132_opt_mux_2182, cat(_auto_opt_reduce_cc_132_opt_mux_2180, _auto_opt_reduce_cc_132_opt_mux_2178)), 1))
    _auto_pmuxtree_cc_37_or_generator_2247 <= orr(pad(cat(_procmux_1175_CMP, cat(_auto_opt_reduce_cc_132_opt_mux_2204, _procmux_1297_CMP)), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2245 <= mux(_auto_rtlil_cc_1863_Or_2244, _auto_rtlil_cc_1906_Mux_2240, _auto_rtlil_cc_1906_Mux_2242)
    _auto_pmuxtree_cc_35_or_generator_2243 <= or(_auto_opt_reduce_cc_132_opt_mux_2194, asUInt(_procmux_1358_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2241 <= mux(_procmux_1459_CMP, _ternary_rtl_control_unit_v_416_376_Y, UInt<2>("h2"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2239 <= mux(_procmux_1358_CMP, _ternary_rtl_control_unit_v_455_380_Y, UInt<2>("h1"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2237 <= mux(_procmux_1175_CMP, _6_col_sel_1_0_, _auto_rtlil_cc_1906_Mux_2236)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2235 <= mux(_auto_opt_reduce_cc_132_opt_mux_2204, _4_col_sel_1_0_, _2_col_sel_1_0_)
    _auto_pmuxtree_cc_101_execute_2233 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2232, 1))
    _auto_pmuxtree_cc_100_execute_2231 <= orr(pad(cat(_procmux_1459_CMP, cat(_auto_opt_reduce_cc_132_opt_mux_2194, cat(_procmux_1358_CMP, cat(_procmux_1297_CMP, cat(_auto_opt_reduce_cc_132_opt_mux_2204, _procmux_1175_CMP))))), 1))
    _auto_pmuxtree_cc_37_or_generator_2227 <= orr(pad(cat(_procmux_1175_CMP, cat(_auto_opt_reduce_cc_132_opt_mux_2180, _auto_opt_reduce_cc_132_opt_mux_2182)), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2225 <= mux(_auto_rtlil_cc_1863_Or_2224, _auto_rtlil_cc_1906_Mux_2220, _auto_rtlil_cc_1906_Mux_2222)
    _auto_pmuxtree_cc_35_or_generator_2223 <= or(_procmux_1358_CMP, asUInt(_procmux_1297_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2221 <= mux(_procmux_1459_CMP, _ternary_rtl_control_unit_v_417_377_Y, UInt<4>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2219 <= mux(_procmux_1297_CMP, _2_col_en_3_0_, _ternary_rtl_control_unit_v_456_381_Y)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2217 <= mux(_procmux_1175_CMP, _3_col_en_3_0_, _auto_rtlil_cc_1906_Mux_2216)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2215 <= mux(_auto_opt_reduce_cc_132_opt_mux_2180, UInt<4>("h4"), UInt<4>("h2"))
    _auto_pmuxtree_cc_101_execute_2213 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2212, 1))
    _auto_pmuxtree_cc_100_execute_2211 <= orr(pad(cat(_procmux_1459_CMP, cat(_procmux_1358_CMP, cat(_procmux_1297_CMP, cat(_auto_opt_reduce_cc_132_opt_mux_2182, cat(_auto_opt_reduce_cc_132_opt_mux_2180, _procmux_1175_CMP))))), 1))
    _add_rtl_control_unit_v_595_421 <= add(rd_count, asUInt(UInt<1>("h1")))
    _auto_opt_reduce_cc_126_opt_mux_2173 <= orr(pad(cat(_procmux_1358_CMP, cat(_procmux_1391_CMP, cat(_procmux_1426_CMP, _procmux_1459_CMP))), 1))
    _auto_opt_reduce_cc_126_opt_mux_2183 <= orr(pad(cat(_eq_rtl_control_unit_v_255_345_Y, cat(_eq_rtl_control_unit_v_255_347_Y, cat(_eq_rtl_control_unit_v_255_349_Y, cat(_procmux_1358_CMP, cat(_procmux_1391_CMP, cat(_procmux_1426_CMP, _procmux_1459_CMP)))))), 1))
    _auto_opt_reduce_cc_126_opt_mux_2185 <= orr(pad(cat(_procmux_1175_CMP, _procmux_1358_CMP), 1))
    _auto_opt_reduce_cc_126_opt_mux_2191 <= orr(pad(cat(key_gen, cat(_eq_rtl_control_unit_v_255_345_Y, cat(_eq_rtl_control_unit_v_255_347_Y, cat(_eq_rtl_control_unit_v_255_349_Y, cat(_procmux_1175_CMP, cat(_procmux_1245_CMP, cat(_procmux_1270_CMP, _procmux_1297_CMP))))))), 1))
    _auto_opt_reduce_cc_126_opt_mux_2193 <= orr(pad(cat(_procmux_1391_CMP, _procmux_1426_CMP), 1))
    _auto_opt_reduce_cc_126_opt_mux_2195 <= orr(pad(cat(op_key_derivation, _procmux_1641_CMP), 1))
    _auto_opt_reduce_cc_126_opt_mux_2197 <= orr(pad(cat(key_gen, _eq_rtl_control_unit_v_255_343_Y), 1))
    _auto_opt_reduce_cc_126_opt_mux_2199 <= orr(pad(cat(_procmux_1245_CMP, _procmux_1391_CMP), 1))
    _auto_opt_reduce_cc_126_opt_mux_2201 <= orr(pad(cat(_procmux_1270_CMP, _procmux_1426_CMP), 1))
    _auto_opt_reduce_cc_126_opt_mux_2203 <= orr(pad(cat(_procmux_1245_CMP, _procmux_1270_CMP), 1))
    _auto_opt_reduce_cc_126_opt_mux_2205 <= orr(pad(cat(_procmux_1175_CMP, cat(_procmux_1245_CMP, cat(_procmux_1270_CMP, _procmux_1297_CMP))), 1))
    _auto_opt_reduce_cc_126_opt_mux_2207 <= orr(pad(cat(_procmux_1358_CMP, cat(_procmux_1391_CMP, _procmux_1426_CMP)), 1))
    _eq_rtl_control_unit_v_262_354 <= eq(aes_mode, asUInt(UInt<2>("h2")))
    _eq_rtl_control_unit_v_263_355 <= eq(aes_mode, asUInt(UInt<2>("h1")))
    _eq_rtl_control_unit_v_599_422 <= eq(rd_count, UInt(0))
    _eq_rtl_control_unit_v_600_423 <= eq(rd_count, asUInt(UInt<4>("ha")))
    _eq_rtl_control_unit_v_600_424 <= eq(rd_count, asUInt(UInt<4>("hb")))
    _logic_and_rtl_control_unit_v_332_370 <= and(neq(last_round, UInt(0)), asUInt(neq(enc_dec, UInt(0))))
    _logic_and_rtl_control_unit_v_534_406 <= and(neq(mode_cbc, UInt(0)), asUInt(neq(last_round, UInt(0))))
    _logic_and_rtl_control_unit_v_534_408 <= and(neq(_logic_and_rtl_control_unit_v_480_384_Y, UInt(0)), asUInt(neq(_logic_not_rtl_control_unit_v_428_378_Y, UInt(0))))
    _logic_and_rtl_control_unit_v_547_413 <= and(neq(mode_ctr, UInt(0)), asUInt(neq(last_round, UInt(0))))
    _logic_and_rtl_control_unit_v_591_419 <= and(neq(_eq_rtl_control_unit_v_255_349_Y, UInt(0)), asUInt(neq(last_round, UInt(0))))
    _logic_not_rtl_control_unit_v_534_407 <= eq(enc_dec, UInt(0))
    _logic_or_rtl_control_unit_v_254_342 <= or(neq(_eq_rtl_control_unit_v_254_340_Y, UInt(0)), asUInt(neq(op_key_derivation, UInt(0))))
    _logic_or_rtl_control_unit_v_255_344 <= or(neq(_logic_or_rtl_control_unit_v_254_342_Y, UInt(0)), asUInt(neq(_eq_rtl_control_unit_v_255_343_Y, UInt(0))))
    _logic_or_rtl_control_unit_v_255_346 <= or(neq(_logic_or_rtl_control_unit_v_255_344_Y, UInt(0)), asUInt(neq(_eq_rtl_control_unit_v_255_345_Y, UInt(0))))
    _logic_or_rtl_control_unit_v_255_348 <= or(neq(_logic_or_rtl_control_unit_v_255_346_Y, UInt(0)), asUInt(neq(_eq_rtl_control_unit_v_255_347_Y, UInt(0))))
    _logic_or_rtl_control_unit_v_255_350 <= or(neq(_logic_or_rtl_control_unit_v_255_348_Y, UInt(0)), asUInt(neq(_eq_rtl_control_unit_v_255_349_Y, UInt(0))))
    _logic_or_rtl_control_unit_v_534_410 <= or(neq(_logic_and_rtl_control_unit_v_480_386_Y, UInt(0)), asUInt(neq(_logic_and_rtl_control_unit_v_480_387_Y, UInt(0))))
    _logic_or_rtl_control_unit_v_591_420 <= or(neq(_eq_rtl_control_unit_v_591_417_Y, UInt(0)), asUInt(neq(_logic_and_rtl_control_unit_v_591_419_Y, UInt(0))))
    _logic_or_rtl_control_unit_v_600_425 <= or(neq(_eq_rtl_control_unit_v_600_423_Y, UInt(0)), asUInt(neq(_eq_rtl_control_unit_v_600_424_Y, UInt(0))))
    _or_rtl_control_unit_v_257_351 <= or(encrypt_decrypt, asUInt(mode_ctr))
    _procdff_2123 <= _0_rd_count_3_0_
    _procdff_2124 <= _0_state_3_0_
    _procmux_1151 <= mux(rd_count_en, _add_rtl_control_unit_v_595_421_Y, rd_count)
    _procmux_1154 <= mux(_logic_or_rtl_control_unit_v_591_420_Y, UInt<4>("h0"), _procmux_1151_Y)
    _procmux_1157 <= mux(rst_n, _procmux_1154_Y, UInt<4>("h0"))
    _procmux_1161 <= mux(op_key_derivation, UInt<1>("h1"), UInt<1>("h0"))
    _procmux_1183 <= mux(_logic_and_rtl_control_unit_v_480_387_Y, UInt<1>("h1"), UInt<1>("h0"))
    _procmux_1194 <= mux(enc_dec, _ternary_rtl_control_unit_v_544_412_Y, UInt<4>("h8"))
    _procmux_1205 <= mux(enc_dec, _ternary_rtl_control_unit_v_485_390_Y, UInt<2>("h1"))
    _procmux_1219 <= mux(_logic_or_rtl_control_unit_v_480_388_Y, UInt<2>("h2"), _7_col_sel_1_0_)
    _procmux_1230 <= mux(enc_dec, UInt<4>("h0"), UInt<4>("h8"))
    _procmux_1254 <= mux(enc_dec, UInt<4>("h8"), UInt<4>("h4"))
    _procmux_1267 <= mux(_logic_or_rtl_control_unit_v_480_388_Y, UInt<2>("h2"), UInt<2>("h1"))
    _procmux_1280 <= mux(enc_dec, UInt<4>("h4"), UInt<4>("h2"))
    _procmux_1294 <= mux(enc_dec, UInt<4>("h1"), _ternary_rtl_control_unit_v_492_391_Y)
    _procmux_1308 <= mux(enc_dec, UInt<2>("h1"), _ternary_rtl_control_unit_v_485_390_Y)
    _procmux_1325 <= mux(_logic_or_rtl_control_unit_v_480_388_Y, UInt<2>("h2"), _3_col_sel_1_0_)
    _procmux_1339 <= mux(enc_dec, UInt<4>("h2"), UInt<4>("h0"))
    _procmux_1371 <= mux(enc_dec, UInt<1>("h0"), UInt<1>("h1"))
    _procmux_1388 <= mux(enc_dec, UInt<4>("h0"), UInt<4>("h4"))
    _procmux_1423 <= mux(enc_dec, UInt<4>("h0"), UInt<4>("h2"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2229 <= mux(_auto_rtlil_cc_1836_ReduceOr_2228, _auto_rtlil_cc_1906_Mux_2218, _auto_rtlil_cc_1906_Mux_2226)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2249 <= mux(_auto_rtlil_cc_1836_ReduceOr_2248, _auto_rtlil_cc_1906_Mux_2238, _auto_rtlil_cc_1906_Mux_2246)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2261 <= mux(_auto_rtlil_cc_1863_Or_2260, _auto_rtlil_cc_1906_Mux_2256, _auto_rtlil_cc_1906_Mux_2258)
    _procmux_1490 <= mux(_auto_opt_reduce_cc_132_opt_mux_2184, UInt<1>("h1"), UInt<1>("h0"))
    _procmux_1509 <= mux(_auto_opt_reduce_cc_132_opt_mux_2174, UInt<1>("h1"), UInt<1>("h0"))
    _procmux_1520 <= mux(_auto_opt_reduce_cc_132_opt_mux_2206, _ternary_rtl_control_unit_v_474_383_Y, UInt<2>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2275 <= mux(_auto_rtlil_cc_1863_Or_2274, _auto_rtlil_cc_1906_Mux_2268, _auto_rtlil_cc_1906_Mux_2272)
    _procmux_1544 <= mux(_auto_opt_reduce_cc_132_opt_mux_2176, UInt<1>("h1"), UInt<1>("h0"))
    _procmux_1548 <= mux(_eq_rtl_control_unit_v_365_373_Y, _2_key_derivation_en_0_0_, UInt<1>("h0"))
    _procmux_1564 <= mux(_procmux_1175_CMP, _2_iv_cnt_en_0_0_, UInt<1>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2283 <= mux(_auto_opt_reduce_cc_132_opt_mux_2192, UInt<1>("h1"), _auto_rtlil_cc_1906_Mux_2282)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2313 <= mux(_auto_rtlil_cc_1836_ReduceOr_2312, _auto_rtlil_cc_1906_Mux_2298, _auto_rtlil_cc_1906_Mux_2310)
    _procmux_1596 <= mux(last_round, _ternary_rtl_control_unit_v_352_372_Y, UInt<4>("hb"))
    _procmux_1606 <= mux(_logic_and_rtl_control_unit_v_332_370_Y, UInt<4>("ha"), _ternary_rtl_control_unit_v_335_371_Y)
    _procmux_1621 <= mux(first_round, _ternary_rtl_control_unit_v_311_365_Y, _ternary_rtl_control_unit_v_307_364_Y)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2317 <= mux(_auto_opt_reduce_cc_132_opt_mux_2196, UInt<4>("hb"), _auto_rtlil_cc_1906_Mux_2316)
    _procmux_1641_CMP0 <= eq(op_mode, asUInt(UInt<2>("h3")))
    _procmux_1642_CMP0 <= eq(op_mode, asUInt(UInt<2>("h1")))
    _procmux_1643_CMP0 <= eq(op_mode, asUInt(UInt<2>("h2")))
    _procmux_1644_CMP0 <= eq(op_mode, UInt(0))
    _procmux_1666 <= mux(start, _3_next_state_3_0_, UInt<4>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2361 <= mux(_auto_rtlil_cc_1836_ReduceOr_2360, _auto_rtlil_cc_1906_Mux_2338, _auto_rtlil_cc_1906_Mux_2358)
    _procmux_1671_CMP0 <= eq(state, asUInt(UInt<4>("ha")))
    _procmux_1672_CMP0 <= eq(state, asUInt(UInt<4>("he")))
    _procmux_1673_CMP0 <= eq(state, asUInt(UInt<4>("hd")))
    _procmux_1674_CMP0 <= eq(state, asUInt(UInt<4>("hc")))
    _procmux_1675_CMP0 <= eq(state, asUInt(UInt<4>("hb")))
    _procmux_1676_CMP0 <= eq(state, asUInt(UInt<4>("h9")))
    _procmux_1677_CMP0 <= eq(state, asUInt(UInt<4>("h8")))
    _procmux_1678_CMP0 <= eq(state, asUInt(UInt<4>("h7")))
    _procmux_1679_CMP0 <= eq(state, asUInt(UInt<4>("h6")))
    _procmux_1680_CMP0 <= eq(state, asUInt(UInt<4>("hf")))
    _procmux_1681_CMP0 <= eq(state, asUInt(UInt<4>("h5")))
    _procmux_1682_CMP0 <= eq(state, asUInt(UInt<4>("h4")))
    _procmux_1683_CMP0 <= eq(state, asUInt(UInt<4>("h3")))
    _procmux_1684_CMP0 <= eq(state, asUInt(UInt<4>("h2")))
    _procmux_1685_CMP0 <= eq(state, asUInt(UInt<4>("h1")))
    _procmux_1686_CMP0 <= eq(state, UInt(0))
    _procmux_1688 <= mux(disable_core, UInt<4>("h0"), next_state)
    _procmux_1691 <= mux(rst_n, _procmux_1688_Y, UInt<4>("h0"))
    _ternary_rtl_control_unit_v_267_356 <= mux(mode_ctr, UInt<2>("h0"), operation_mode)
    _ternary_rtl_control_unit_v_289_359 <= mux(enc_dec, UInt<4>("h2"), UInt<4>("h5"))
    _ternary_rtl_control_unit_v_293_360 <= mux(enc_dec, UInt<4>("h3"), UInt<4>("h1"))
    _ternary_rtl_control_unit_v_301_362 <= mux(enc_dec, UInt<4>("h5"), UInt<4>("h3"))
    _ternary_rtl_control_unit_v_307_364 <= mux(last_round, UInt<4>("ha"), UInt<4>("hf"))
    _ternary_rtl_control_unit_v_316_366 <= mux(enc_dec, UInt<4>("h6"), UInt<4>("h9"))
    _ternary_rtl_control_unit_v_320_367 <= mux(enc_dec, UInt<4>("h7"), UInt<4>("h5"))
    _ternary_rtl_control_unit_v_324_368 <= mux(enc_dec, UInt<4>("h8"), UInt<4>("h6"))
    _ternary_rtl_control_unit_v_328_369 <= mux(enc_dec, UInt<4>("h9"), UInt<4>("h7"))
    _ternary_rtl_control_unit_v_335_371 <= mux(enc_dec, UInt<4>("h5"), UInt<4>("h8"))
    _ternary_rtl_control_unit_v_352_372 <= mux(op_key_derivation, UInt<4>("ha"), UInt<4>("h4"))
    _ternary_rtl_control_unit_v_365_374 <= mux(_eq_rtl_control_unit_v_365_373_Y, UInt<1>("h1"), UInt<1>("h0"))
    _ternary_rtl_control_unit_v_416_376 <= mux(enc_dec, UInt<2>("h1"), UInt<2>("h0"))
    _ternary_rtl_control_unit_v_417_377 <= mux(enc_dec, UInt<4>("h1"), UInt<4>("hf"))
    _ternary_rtl_control_unit_v_455_380 <= mux(enc_dec, UInt<2>("h0"), UInt<2>("h1"))
    _ternary_rtl_control_unit_v_456_381 <= mux(enc_dec, UInt<4>("hf"), UInt<4>("h8"))
    _ternary_rtl_control_unit_v_492_391 <= mux(last_round, UInt<4>("h1"), UInt<4>("hf"))
    _ternary_rtl_control_unit_v_529_404 <= mux(last_round, UInt<2>("h1"), UInt<2>("h2"))
    _ternary_rtl_control_unit_v_539_411 <= mux(last_round, UInt<2>("h1"), UInt<2>("h0"))
    _ternary_rtl_control_unit_v_544_412 <= mux(last_round, UInt<4>("h8"), UInt<4>("hf"))
    _0 <= iv_cnt_en
    _1 <= start
    _2 <= rd_count
    _3 <= _auto_rtlil_cc_1906_Mux_2230
    _4 <= _auto_rtlil_cc_1906_Mux_2250
    _5 <= _auto_rtlil_cc_1906_Mux_2262
    _6 <= _auto_rtlil_cc_1906_Mux_2276
    _7 <= _auto_rtlil_cc_1906_Mux_2284
    _8 <= _auto_rtlil_cc_1906_Mux_2314
    _9 <= _auto_rtlil_cc_1906_Mux_2318
    _10 <= _auto_rtlil_cc_1906_Mux_2362

    _auto_rtlil_cc_1906_Mux_2362 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2361, 3, 0)
    _auto_rtlil_cc_1836_ReduceOr_2360 <= bits(_auto_pmuxtree_cc_37_or_generator_2359, 0, 0)
    _auto_rtlil_cc_1906_Mux_2358 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2357, 3, 0)
    _auto_rtlil_cc_1836_ReduceOr_2356 <= bits(_auto_pmuxtree_cc_37_or_generator_2355, 0, 0)
    _auto_rtlil_cc_1906_Mux_2354 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2353, 3, 0)
    _auto_rtlil_cc_1863_Or_2352 <= bits(_auto_pmuxtree_cc_35_or_generator_2351, 0, 0)
    _auto_rtlil_cc_1906_Mux_2350 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2349, 3, 0)
    _auto_rtlil_cc_1906_Mux_2348 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2347, 3, 0)
    _auto_rtlil_cc_1906_Mux_2346 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2345, 3, 0)
    _auto_rtlil_cc_1863_Or_2344 <= bits(_auto_pmuxtree_cc_35_or_generator_2343, 0, 0)
    _auto_rtlil_cc_1906_Mux_2342 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2341, 3, 0)
    _auto_rtlil_cc_1906_Mux_2340 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2339, 3, 0)
    _auto_rtlil_cc_1906_Mux_2338 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2337, 3, 0)
    _auto_rtlil_cc_1836_ReduceOr_2336 <= bits(_auto_pmuxtree_cc_37_or_generator_2335, 0, 0)
    _auto_rtlil_cc_1906_Mux_2334 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2333, 3, 0)
    _auto_rtlil_cc_1863_Or_2332 <= bits(_auto_pmuxtree_cc_35_or_generator_2331, 0, 0)
    _auto_rtlil_cc_1906_Mux_2330 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2329, 3, 0)
    _auto_rtlil_cc_1906_Mux_2328 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2327, 3, 0)
    _auto_rtlil_cc_1906_Mux_2326 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2325, 3, 0)
    _auto_rtlil_cc_1863_Or_2324 <= bits(_auto_pmuxtree_cc_35_or_generator_2323, 0, 0)
    _auto_rtlil_cc_1906_Mux_2322 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2321, 3, 0)
    _auto_rtlil_cc_1906_Mux_2320 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2319, 3, 0)
    _auto_rtlil_cc_1906_Mux_2318 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2317, 3, 0)
    _auto_rtlil_cc_1906_Mux_2316 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2315, 3, 0)
    _auto_rtlil_cc_1906_Mux_2314 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2313, 3, 0)
    _auto_rtlil_cc_1836_ReduceOr_2312 <= bits(_auto_pmuxtree_cc_37_or_generator_2311, 0, 0)
    _auto_rtlil_cc_1906_Mux_2310 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2309, 3, 0)
    _auto_rtlil_cc_1836_ReduceOr_2308 <= bits(_auto_pmuxtree_cc_37_or_generator_2307, 0, 0)
    _auto_rtlil_cc_1906_Mux_2306 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2305, 3, 0)
    _auto_rtlil_cc_1906_Mux_2304 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2303, 3, 0)
    _auto_rtlil_cc_1906_Mux_2302 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2301, 3, 0)
    _auto_rtlil_cc_1906_Mux_2300 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2299, 3, 0)
    _auto_rtlil_cc_1906_Mux_2298 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2297, 3, 0)
    _auto_rtlil_cc_1863_Or_2296 <= bits(_auto_pmuxtree_cc_35_or_generator_2295, 0, 0)
    _auto_rtlil_cc_1906_Mux_2294 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2293, 3, 0)
    _auto_rtlil_cc_1906_Mux_2292 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2291, 3, 0)
    _auto_rtlil_cc_1906_Mux_2290 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2289, 3, 0)
    _auto_rtlil_cc_1832_Not_2288 <= bits(_auto_pmuxtree_cc_101_execute_2287, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2286 <= bits(_auto_pmuxtree_cc_100_execute_2285, 0, 0)
    _auto_rtlil_cc_1906_Mux_2284 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2283, 0, 0)
    _auto_rtlil_cc_1906_Mux_2282 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2281, 0, 0)
    _auto_rtlil_cc_1832_Not_2280 <= bits(_auto_pmuxtree_cc_101_execute_2279, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2278 <= bits(_auto_pmuxtree_cc_100_execute_2277, 0, 0)
    _auto_rtlil_cc_1906_Mux_2276 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2275, 2, 0)
    _auto_rtlil_cc_1863_Or_2274 <= bits(_auto_pmuxtree_cc_35_or_generator_2273, 0, 0)
    _auto_rtlil_cc_1906_Mux_2272 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2271, 2, 0)
    _auto_rtlil_cc_1906_Mux_2270 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2269, 2, 0)
    _auto_rtlil_cc_1906_Mux_2268 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2267, 2, 0)
    _auto_rtlil_cc_1832_Not_2266 <= bits(_auto_pmuxtree_cc_101_execute_2265, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2264 <= bits(_auto_pmuxtree_cc_100_execute_2263, 0, 0)
    _auto_rtlil_cc_1906_Mux_2262 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2261, 1, 0)
    _auto_rtlil_cc_1863_Or_2260 <= bits(_auto_pmuxtree_cc_35_or_generator_2259, 0, 0)
    _auto_rtlil_cc_1906_Mux_2258 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2257, 1, 0)
    _auto_rtlil_cc_1906_Mux_2256 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2255, 1, 0)
    _auto_rtlil_cc_1832_Not_2254 <= bits(_auto_pmuxtree_cc_101_execute_2253, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2252 <= bits(_auto_pmuxtree_cc_100_execute_2251, 0, 0)
    _auto_rtlil_cc_1906_Mux_2250 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2249, 1, 0)
    _auto_rtlil_cc_1836_ReduceOr_2248 <= bits(_auto_pmuxtree_cc_37_or_generator_2247, 0, 0)
    _auto_rtlil_cc_1906_Mux_2246 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2245, 1, 0)
    _auto_rtlil_cc_1863_Or_2244 <= bits(_auto_pmuxtree_cc_35_or_generator_2243, 0, 0)
    _auto_rtlil_cc_1906_Mux_2242 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2241, 1, 0)
    _auto_rtlil_cc_1906_Mux_2240 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2239, 1, 0)
    _auto_rtlil_cc_1906_Mux_2238 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2237, 1, 0)
    _auto_rtlil_cc_1906_Mux_2236 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2235, 1, 0)
    _auto_rtlil_cc_1832_Not_2234 <= bits(_auto_pmuxtree_cc_101_execute_2233, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2232 <= bits(_auto_pmuxtree_cc_100_execute_2231, 0, 0)
    _auto_rtlil_cc_1906_Mux_2230 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2229, 3, 0)
    _auto_rtlil_cc_1836_ReduceOr_2228 <= bits(_auto_pmuxtree_cc_37_or_generator_2227, 0, 0)
    _auto_rtlil_cc_1906_Mux_2226 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2225, 3, 0)
    _auto_rtlil_cc_1863_Or_2224 <= bits(_auto_pmuxtree_cc_35_or_generator_2223, 0, 0)
    _auto_rtlil_cc_1906_Mux_2222 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2221, 3, 0)
    _auto_rtlil_cc_1906_Mux_2220 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2219, 3, 0)
    _auto_rtlil_cc_1906_Mux_2218 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2217, 3, 0)
    _auto_rtlil_cc_1906_Mux_2216 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2215, 3, 0)
    _auto_rtlil_cc_1832_Not_2214 <= bits(_auto_pmuxtree_cc_101_execute_2213, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2212 <= bits(_auto_pmuxtree_cc_100_execute_2211, 0, 0)
    _0_rd_count_3_0_ <= bits(_procmux_1157, 3, 0)
    _0_state_3_0_ <= bits(_procmux_1691, 3, 0)
    _2_col_en_3_0_ <= bits(_procmux_1294, 3, 0)
    _2_col_sel_1_0_ <= bits(_procmux_1325, 1, 0)
    _2_iv_cnt_en_0_0_ <= bits(_procmux_1183, 0, 0)
    _2_key_derivation_en_0_0_ <= bits(_procmux_1161, 0, 0)
    _2_key_en_3_0_ <= bits(_procmux_1423, 3, 0)
    _2_key_sel_0_0_ <= bits(_procmux_1371, 0, 0)
    _2_next_state_3_0_ <= bits(_procmux_1666, 3, 0)
    _3_col_en_3_0_ <= bits(_procmux_1194, 3, 0)
    _3_col_sel_1_0_ <= bits(_procmux_1308, 1, 0)
    _3_key_en_3_0_ <= bits(_procmux_1388, 3, 0)
    _3_next_state_3_0_ <= bits(_9, 3, 0)
    _4_col_sel_1_0_ <= bits(_procmux_1267, 1, 0)
    _4_key_en_3_0_ <= bits(_procmux_1230, 3, 0)
    _4_next_state_3_0_ <= bits(_procmux_1621, 3, 0)
    _5_key_en_3_0_ <= bits(_procmux_1339, 3, 0)
    _5_next_state_3_0_ <= bits(_procmux_1606, 3, 0)
    _6_col_sel_1_0_ <= bits(_procmux_1219, 1, 0)
    _6_key_en_3_0_ <= bits(_procmux_1280, 3, 0)
    _6_next_state_3_0_ <= bits(_procmux_1596, 3, 0)
    _7_col_sel_1_0_ <= bits(_procmux_1205, 1, 0)
    _7_key_en_3_0_ <= bits(_procmux_1254, 3, 0)
    _add_rtl_control_unit_v_595_421_Y <= bits(_add_rtl_control_unit_v_595_421, 3, 0)
    _auto_opt_reduce_cc_132_opt_mux_2174 <= bits(_auto_opt_reduce_cc_126_opt_mux_2173, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2176 <= bits(_auto_opt_reduce_cc_126_opt_mux_2197, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2178 <= bits(_auto_opt_reduce_cc_126_opt_mux_2185, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2180 <= bits(_auto_opt_reduce_cc_126_opt_mux_2199, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2182 <= bits(_auto_opt_reduce_cc_126_opt_mux_2201, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2184 <= bits(_auto_opt_reduce_cc_126_opt_mux_2183, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2192 <= bits(_auto_opt_reduce_cc_126_opt_mux_2191, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2194 <= bits(_auto_opt_reduce_cc_126_opt_mux_2193, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2196 <= bits(_auto_opt_reduce_cc_126_opt_mux_2195, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2204 <= bits(_auto_opt_reduce_cc_126_opt_mux_2203, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2206 <= bits(_auto_opt_reduce_cc_126_opt_mux_2205, 0, 0)
    _auto_opt_reduce_cc_132_opt_mux_2208 <= bits(_auto_opt_reduce_cc_126_opt_mux_2207, 0, 0)
    _eq_rtl_control_unit_v_254_340_Y <= bits(_procmux_1644_CMP0, 0, 0)
    _eq_rtl_control_unit_v_255_343_Y <= bits(_procmux_1675_CMP0, 0, 0)
    _eq_rtl_control_unit_v_255_345_Y <= bits(_procmux_1674_CMP0, 0, 0)
    _eq_rtl_control_unit_v_255_347_Y <= bits(_procmux_1673_CMP0, 0, 0)
    _eq_rtl_control_unit_v_255_349_Y <= bits(_procmux_1672_CMP0, 0, 0)
    _eq_rtl_control_unit_v_365_373_Y <= bits(_procmux_1671_CMP0, 0, 0)
    _eq_rtl_control_unit_v_591_417_Y <= bits(_procmux_1686_CMP0, 0, 0)
    _eq_rtl_control_unit_v_600_423_Y <= bits(_eq_rtl_control_unit_v_600_423, 0, 0)
    _eq_rtl_control_unit_v_600_424_Y <= bits(_eq_rtl_control_unit_v_600_424, 0, 0)
    _logic_and_rtl_control_unit_v_332_370_Y <= bits(_logic_and_rtl_control_unit_v_332_370, 0, 0)
    _logic_and_rtl_control_unit_v_480_384_Y <= bits(_logic_and_rtl_control_unit_v_534_406, 0, 0)
    _logic_and_rtl_control_unit_v_480_386_Y <= bits(_logic_and_rtl_control_unit_v_534_408, 0, 0)
    _logic_and_rtl_control_unit_v_480_387_Y <= bits(_logic_and_rtl_control_unit_v_547_413, 0, 0)
    _logic_and_rtl_control_unit_v_591_419_Y <= bits(_logic_and_rtl_control_unit_v_591_419, 0, 0)
    _logic_not_rtl_control_unit_v_428_378_Y <= bits(_logic_not_rtl_control_unit_v_534_407, 0, 0)
    _logic_or_rtl_control_unit_v_254_342_Y <= bits(_logic_or_rtl_control_unit_v_254_342, 0, 0)
    _logic_or_rtl_control_unit_v_255_344_Y <= bits(_logic_or_rtl_control_unit_v_255_344, 0, 0)
    _logic_or_rtl_control_unit_v_255_346_Y <= bits(_logic_or_rtl_control_unit_v_255_346, 0, 0)
    _logic_or_rtl_control_unit_v_255_348_Y <= bits(_logic_or_rtl_control_unit_v_255_348, 0, 0)
    _logic_or_rtl_control_unit_v_480_388_Y <= bits(_logic_or_rtl_control_unit_v_534_410, 0, 0)
    _logic_or_rtl_control_unit_v_591_420_Y <= bits(_logic_or_rtl_control_unit_v_591_420, 0, 0)
    _procmux_1151_Y <= bits(_procmux_1151, 3, 0)
    _procmux_1154_Y <= bits(_procmux_1154, 3, 0)
    _procmux_1175_CMP <= bits(_procmux_1676_CMP0, 0, 0)
    _procmux_1245_CMP <= bits(_procmux_1677_CMP0, 0, 0)
    _procmux_1270_CMP <= bits(_procmux_1678_CMP0, 0, 0)
    _procmux_1297_CMP <= bits(_procmux_1679_CMP0, 0, 0)
    _procmux_1358_CMP <= bits(_procmux_1682_CMP0, 0, 0)
    _procmux_1391_CMP <= bits(_procmux_1683_CMP0, 0, 0)
    _procmux_1426_CMP <= bits(_procmux_1684_CMP0, 0, 0)
    _procmux_1459_CMP <= bits(_procmux_1685_CMP0, 0, 0)
    _procmux_1641_CMP <= bits(_procmux_1641_CMP0, 0, 0)
    _procmux_1643_CMP <= bits(_procmux_1643_CMP0, 0, 0)
    _procmux_1680_CMP <= bits(_procmux_1680_CMP0, 0, 0)
    _procmux_1688_Y <= bits(_procmux_1688, 3, 0)
    _ternary_rtl_control_unit_v_289_359_Y <= bits(_ternary_rtl_control_unit_v_289_359, 3, 0)
    _ternary_rtl_control_unit_v_293_360_Y <= bits(_ternary_rtl_control_unit_v_293_360, 3, 0)
    _ternary_rtl_control_unit_v_301_362_Y <= bits(_ternary_rtl_control_unit_v_301_362, 3, 0)
    _ternary_rtl_control_unit_v_307_364_Y <= bits(_ternary_rtl_control_unit_v_307_364, 3, 0)
    _ternary_rtl_control_unit_v_311_365_Y <= bits(_ternary_rtl_control_unit_v_316_366, 3, 0)
    _ternary_rtl_control_unit_v_320_367_Y <= bits(_ternary_rtl_control_unit_v_320_367, 3, 0)
    _ternary_rtl_control_unit_v_324_368_Y <= bits(_ternary_rtl_control_unit_v_324_368, 3, 0)
    _ternary_rtl_control_unit_v_328_369_Y <= bits(_ternary_rtl_control_unit_v_328_369, 3, 0)
    _ternary_rtl_control_unit_v_335_371_Y <= bits(_ternary_rtl_control_unit_v_335_371, 3, 0)
    _ternary_rtl_control_unit_v_352_372_Y <= bits(_ternary_rtl_control_unit_v_352_372, 3, 0)
    _ternary_rtl_control_unit_v_416_376_Y <= bits(_ternary_rtl_control_unit_v_416_376, 1, 0)
    _ternary_rtl_control_unit_v_417_377_Y <= bits(_ternary_rtl_control_unit_v_417_377, 3, 0)
    _ternary_rtl_control_unit_v_455_380_Y <= bits(_ternary_rtl_control_unit_v_455_380, 1, 0)
    _ternary_rtl_control_unit_v_456_381_Y <= bits(_ternary_rtl_control_unit_v_456_381, 3, 0)
    _ternary_rtl_control_unit_v_474_383_Y <= bits(_ternary_rtl_control_unit_v_529_404, 1, 0)
    _ternary_rtl_control_unit_v_485_390_Y <= bits(_ternary_rtl_control_unit_v_539_411, 1, 0)
    _ternary_rtl_control_unit_v_492_391_Y <= bits(_ternary_rtl_control_unit_v_492_391, 3, 0)
    _ternary_rtl_control_unit_v_544_412_Y <= bits(_ternary_rtl_control_unit_v_544_412, 3, 0)
    bypass_key_en <= bits(_procmux_1490, 0, 0)
    bypass_rk <= bits(_procmux_1509, 0, 0)
    col_en <= bits(_3, 3, 0)
    col_sel <= bits(_4, 1, 0)
    enc_dec <= bits(_or_rtl_control_unit_v_257_351, 0, 0)
    encrypt_decrypt <= bits(_logic_or_rtl_control_unit_v_255_350, 0, 0)
    end_comp <= bits(_ternary_rtl_control_unit_v_365_374, 0, 0)
    first_round <= bits(_eq_rtl_control_unit_v_599_422, 0, 0)
    iv_cnt_en <= bits(_procmux_1564, 0, 0)
    iv_cnt_sel <= bits(_0, 0, 0)
    key_derivation_en <= bits(_procmux_1548, 0, 0)
    key_en <= bits(_8, 3, 0)
    key_gen <= bits(_procmux_1681_CMP0, 0, 0)
    key_init <= bits(_1, 0, 0)
    key_out_sel <= bits(_5, 1, 0)
    key_sel <= bits(_7, 0, 0)
    last_round <= bits(_logic_or_rtl_control_unit_v_600_425, 0, 0)
    mode_cbc <= bits(_eq_rtl_control_unit_v_263_355, 0, 0)
    mode_ctr <= bits(_eq_rtl_control_unit_v_262_354, 0, 0)
    next_state <= bits(_10, 3, 0)
    op_key_derivation <= bits(_procmux_1642_CMP0, 0, 0)
    op_mode <= bits(_ternary_rtl_control_unit_v_267_356, 1, 0)
    rd_count <= bits(_procdff_2123, 3, 0)
    rd_count_en <= bits(_procmux_1544, 0, 0)
    rk_sel <= bits(_procmux_1520, 1, 0)
    round <= bits(_2, 3, 0)
    sbox_sel <= bits(_6, 2, 0)
    state <= bits(_procdff_2124, 3, 0)
  module data_swap:
    input data_in: UInt<32>
    output data_swap: UInt<32>
    input swap_type: UInt<2>

    wire _auto_rtlil_cc_1906_Mux_2370: UInt<32>
    wire _auto_rtlil_cc_1863_Or_2368: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2366: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2364: UInt<32>
    wire _procmux_1147_CMP: UInt<1>
    wire _procmux_1148_CMP: UInt<1>
    wire _procmux_1149_CMP: UInt<1>
    wire _procmux_1150_CMP: UInt<1>
    wire words_0_: UInt<32>
    wire words_1_: UInt<32>
    wire words_2_: UInt<32>
    wire words_3_: UInt<32>
    wire _auto_pmuxtree_cc_35_or_generator_2367: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2365: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2363: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2369: UInt<32>
    wire _procmux_1147_CMP0: UInt<1>
    wire _procmux_1148_CMP0: UInt<1>
    wire _procmux_1149_CMP0: UInt<1>
    wire _procmux_1150_CMP0: UInt<1>
    wire _11: UInt<32>
    wire _12: UInt<32>
    wire _13: UInt<32>
    wire _14: UInt<32>
    wire _15: UInt<32>


    _auto_pmuxtree_cc_35_or_generator_2367 <= or(_procmux_1148_CMP, asUInt(_procmux_1147_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2365 <= mux(_procmux_1149_CMP, cat(bits(data_in, 15, 0), bits(data_in, 31, 16)), data_in)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2363 <= mux(_procmux_1147_CMP, cat(bits(data_in, 0, 0), cat(bits(data_in, 1, 1), cat(bits(data_in, 2, 2), cat(bits(data_in, 3, 3), cat(bits(data_in, 4, 4), cat(bits(data_in, 5, 5), cat(bits(data_in, 6, 6), cat(bits(data_in, 7, 7), cat(bits(data_in, 8, 8), cat(bits(data_in, 9, 9), cat(bits(data_in, 10, 10), cat(bits(data_in, 11, 11), cat(bits(data_in, 12, 12), cat(bits(data_in, 13, 13), cat(bits(data_in, 14, 14), cat(bits(data_in, 15, 15), cat(bits(data_in, 16, 16), cat(bits(data_in, 17, 17), cat(bits(data_in, 18, 18), cat(bits(data_in, 19, 19), cat(bits(data_in, 20, 20), cat(bits(data_in, 21, 21), cat(bits(data_in, 22, 22), cat(bits(data_in, 23, 23), cat(bits(data_in, 24, 24), cat(bits(data_in, 25, 25), cat(bits(data_in, 26, 26), cat(bits(data_in, 27, 27), cat(bits(data_in, 28, 28), cat(bits(data_in, 29, 29), cat(bits(data_in, 30, 30), bits(data_in, 31, 31)))))))))))))))))))))))))))))))), cat(bits(data_in, 7, 0), cat(bits(data_in, 15, 8), cat(bits(data_in, 23, 16), bits(data_in, 31, 24)))))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2369 <= mux(_auto_rtlil_cc_1863_Or_2368, _auto_rtlil_cc_1906_Mux_2364, _auto_rtlil_cc_1906_Mux_2366)
    _procmux_1147_CMP0 <= eq(swap_type, asUInt(UInt<2>("h3")))
    _procmux_1148_CMP0 <= eq(swap_type, asUInt(UInt<2>("h2")))
    _procmux_1149_CMP0 <= eq(swap_type, asUInt(UInt<2>("h1")))
    _procmux_1150_CMP0 <= eq(swap_type, UInt(0))
    _11 <= data_in
    _12 <= cat(bits(data_in, 15, 0), bits(data_in, 31, 16))
    _13 <= cat(bits(data_in, 7, 0), cat(bits(data_in, 15, 8), cat(bits(data_in, 23, 16), bits(data_in, 31, 24))))
    _14 <= cat(bits(data_in, 0, 0), cat(bits(data_in, 1, 1), cat(bits(data_in, 2, 2), cat(bits(data_in, 3, 3), cat(bits(data_in, 4, 4), cat(bits(data_in, 5, 5), cat(bits(data_in, 6, 6), cat(bits(data_in, 7, 7), cat(bits(data_in, 8, 8), cat(bits(data_in, 9, 9), cat(bits(data_in, 10, 10), cat(bits(data_in, 11, 11), cat(bits(data_in, 12, 12), cat(bits(data_in, 13, 13), cat(bits(data_in, 14, 14), cat(bits(data_in, 15, 15), cat(bits(data_in, 16, 16), cat(bits(data_in, 17, 17), cat(bits(data_in, 18, 18), cat(bits(data_in, 19, 19), cat(bits(data_in, 20, 20), cat(bits(data_in, 21, 21), cat(bits(data_in, 22, 22), cat(bits(data_in, 23, 23), cat(bits(data_in, 24, 24), cat(bits(data_in, 25, 25), cat(bits(data_in, 26, 26), cat(bits(data_in, 27, 27), cat(bits(data_in, 28, 28), cat(bits(data_in, 29, 29), cat(bits(data_in, 30, 30), bits(data_in, 31, 31))))))))))))))))))))))))))))))))
    _15 <= _auto_rtlil_cc_1906_Mux_2370

    _auto_rtlil_cc_1906_Mux_2370 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2369, 31, 0)
    _auto_rtlil_cc_1863_Or_2368 <= bits(_auto_pmuxtree_cc_35_or_generator_2367, 0, 0)
    _auto_rtlil_cc_1906_Mux_2366 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2365, 31, 0)
    _auto_rtlil_cc_1906_Mux_2364 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2363, 31, 0)
    _procmux_1147_CMP <= bits(_procmux_1147_CMP0, 0, 0)
    _procmux_1148_CMP <= bits(_procmux_1148_CMP0, 0, 0)
    _procmux_1149_CMP <= bits(_procmux_1149_CMP0, 0, 0)
    _procmux_1150_CMP <= bits(_procmux_1150_CMP0, 0, 0)
    data_swap <= bits(_15, 31, 0)
    words_0_ <= bits(_11, 31, 0)
    words_1_ <= bits(_12, 31, 0)
    words_2_ <= bits(_13, 31, 0)
    words_3_ <= bits(_14, 31, 0)
  module datapath:
    input bus_in: UInt<32>
    input bypass_key_en: UInt<1>
    input bypass_rk: UInt<1>
    input clk: UInt<1>
    output col_bus: UInt<32>
    input col_en_cnt_unit: UInt<4>
    input col_en_host: UInt<4>
    input col_sel: UInt<2>
    input col_sel_host: UInt<2>
    input data_type: UInt<2>
    input enc_dec: UInt<1>
    output end_aes: UInt<1>
    input end_comp: UInt<1>
    input first_block: UInt<1>
    output iv_bus: UInt<32>
    input iv_cnt_en: UInt<1>
    input iv_cnt_sel: UInt<1>
    input iv_en: UInt<4>
    input iv_sel_rd: UInt<4>
    output key_bus: UInt<32>
    input key_derivation_en: UInt<1>
    input key_en: UInt<4>
    input key_gen: UInt<1>
    input key_host_en: UInt<4>
    input key_init: UInt<1>
    input key_out_sel: UInt<2>
    input key_sel: UInt<1>
    input key_sel_rd: UInt<2>
    input last_round: UInt<1>
    input mode_cbc: UInt<1>
    input mode_ctr: UInt<1>
    input rk_sel: UInt<2>
    input round: UInt<4>
    input rst_n: UInt<1>
    input sbox_sel: UInt<3>

    wire _auto_rtlil_cc_1906_Mux_2418: UInt<128>
    wire _auto_rtlil_cc_1863_Or_2416: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2414: UInt<128>
    wire _auto_rtlil_cc_1906_Mux_2412: UInt<128>
    wire _auto_rtlil_cc_1832_Not_2410: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2408: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2406: UInt<32>
    wire _auto_rtlil_cc_1836_ReduceOr_2404: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2402: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2400: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2398: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2396: UInt<32>
    wire _auto_rtlil_cc_1832_Not_2394: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2392: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2390: UInt<32>
    wire _auto_rtlil_cc_1863_Or_2388: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2386: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2384: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2382: UInt<32>
    wire _auto_rtlil_cc_1863_Or_2380: UInt<1>
    wire _auto_rtlil_cc_1906_Mux_2378: UInt<32>
    wire _auto_rtlil_cc_1906_Mux_2376: UInt<32>
    wire _auto_rtlil_cc_1832_Not_2374: UInt<1>
    wire _auto_rtlil_cc_1836_ReduceOr_2372: UInt<1>
    wire _0_bkp_0__31_0_: UInt<32>
    wire _0_bkp_1__31_0_: UInt<32>
    wire _0_bkp_2__31_0_: UInt<32>
    wire _0_bkp_3__31_0_: UInt<32>
    wire _0_bkp_1_0__31_0_: UInt<32>
    wire _0_bkp_1_1__31_0_: UInt<32>
    wire _0_bkp_1_2__31_0_: UInt<32>
    wire _0_bkp_1_3__31_0_: UInt<32>
    wire _0_col_0__31_0_: UInt<32>
    wire _0_col_1__31_0_: UInt<32>
    wire _0_col_2__31_0_: UInt<32>
    wire _0_col_3__31_0_: UInt<32>
    wire _0_col_en_cnt_unit_pp1_3_0_: UInt<4>
    wire _0_col_en_cnt_unit_pp2_3_0_: UInt<4>
    wire _0_col_sel_pp1_1_0_: UInt<2>
    wire _0_col_sel_pp2_1_0_: UInt<2>
    wire _0_iv_0__31_0_: UInt<32>
    wire _0_iv_1__31_0_: UInt<32>
    wire _0_iv_2__31_0_: UInt<32>
    wire _0_iv_3__31_0_: UInt<32>
    wire _0_key_0__31_0_: UInt<32>
    wire _0_key_1__31_0_: UInt<32>
    wire _0_key_2__31_0_: UInt<32>
    wire _0_key_3__31_0_: UInt<32>
    wire _0_key_en_pp1_3_0_: UInt<4>
    wire _0_key_host_0__31_0_: UInt<32>
    wire _0_key_host_1__31_0_: UInt<32>
    wire _0_key_host_2__31_0_: UInt<32>
    wire _0_key_host_3__31_0_: UInt<32>
    wire _0_key_out_sel_pp1_1_0_: UInt<2>
    wire _0_key_out_sel_pp2_1_0_: UInt<2>
    wire _0_key_sel_pp1_0_0_: UInt<1>
    wire _0_last_round_pp1_0_0_: UInt<1>
    wire _0_last_round_pp2_0_0_: UInt<1>
    wire _0_rk_out_sel_pp1_0_0_: UInt<1>
    wire _0_rk_out_sel_pp2_0_0_: UInt<1>
    wire _0_rk_sel_pp1_1_0_: UInt<2>
    wire _0_rk_sel_pp2_1_0_: UInt<2>
    wire _0_round_pp1_3_0_: UInt<4>
    wire _0_sbox_pp2_31_0_: UInt<32>
    wire _1_bkp_mux_out_31_0_: UInt<32>
    wire _1_iv_mux_out_31_0_: UInt<32>
    wire _2_bkp_mux_out_31_0_: UInt<32>
    wire _2_iv_mux_out_31_0_: UInt<32>
    wire _3_bkp_mux_out_31_0_: UInt<32>
    wire _3_iv_mux_out_31_0_: UInt<32>
    wire _add_rtl_datapath_v_324_82_Y: UInt<32>
    wire _and_rtl_datapath_v_298_23_Y: UInt<4>
    wire _and_rtl_datapath_v_299_27_Y: UInt<4>
    wire _logic_and_rtl_datapath_v_281_11_Y: UInt<1>
    wire _logic_and_rtl_datapath_v_283_14_Y: UInt<1>
    wire _logic_and_rtl_datapath_v_298_21_Y: UInt<1>
    wire _logic_and_rtl_datapath_v_298_22_Y: UInt<1>
    wire _logic_and_rtl_datapath_v_299_25_Y: UInt<1>
    wire _logic_and_rtl_datapath_v_341_66_Y: UInt<1>
    wire _logic_not_rtl_datapath_v_281_10_Y: UInt<1>
    wire _logic_not_rtl_datapath_v_299_24_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_290_18_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_299_26_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_320_81_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_430_40_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_450_106_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_450_114_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_450_122_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_450_98_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_100_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_101_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_108_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_109_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_116_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_117_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_124_Y: UInt<1>
    wire _logic_or_rtl_datapath_v_453_125_Y: UInt<1>
    wire _or_rtl_datapath_v_273_6_Y: UInt<1>
    wire _or_rtl_datapath_v_273_7_Y: UInt<1>
    wire _or_rtl_datapath_v_273_8_Y: UInt<1>
    wire _or_rtl_datapath_v_273_9_Y: UInt<1>
    wire _or_rtl_datapath_v_402_37_Y: UInt<3>
    wire _or_rtl_datapath_v_475_47_Y: UInt<1>
    wire _or_rtl_datapath_v_481_51_Y: UInt<2>
    wire _procmux_1896_Y: UInt<32>
    wire _procmux_1901_Y: UInt<32>
    wire _procmux_1906_Y: UInt<32>
    wire _procmux_1911_Y: UInt<32>
    wire _procmux_1916_Y: UInt<32>
    wire _procmux_1921_Y: UInt<32>
    wire _procmux_1926_Y: UInt<32>
    wire _procmux_1931_Y: UInt<32>
    wire _procmux_1936_Y: UInt<32>
    wire _procmux_1941_Y: UInt<32>
    wire _procmux_1946_Y: UInt<32>
    wire _procmux_1951_Y: UInt<32>
    wire _procmux_1956_Y: UInt<32>
    wire _procmux_1961_Y: UInt<32>
    wire _procmux_1967_Y: UInt<32>
    wire _procmux_1969_Y: UInt<32>
    wire _procmux_1974_Y: UInt<32>
    wire _procmux_1979_Y: UInt<32>
    wire _procmux_1984_Y: UInt<32>
    wire _procmux_1989_Y: UInt<32>
    wire _procmux_1994_Y: UInt<32>
    wire _procmux_1999_Y: UInt<32>
    wire _procmux_2004_Y: UInt<32>
    wire _procmux_2009_Y: UInt<32>
    wire _procmux_2014_Y: UInt<32>
    wire _procmux_2055_Y: UInt<4>
    wire _procmux_2060_Y: UInt<4>
    wire _procmux_2065_Y: UInt<4>
    wire _procmux_2072_CMP: UInt<1>
    wire _procmux_2073_CMP: UInt<1>
    wire _procmux_2074_CMP: UInt<1>
    wire _procmux_2076_CMP: UInt<1>
    wire _procmux_2077_CMP: UInt<1>
    wire _procmux_2078_CMP: UInt<1>
    wire _procmux_2079_CMP: UInt<1>
    wire _procmux_2082_CMP: UInt<1>
    wire _procmux_2083_CMP: UInt<1>
    wire _procmux_2084_CMP: UInt<1>
    wire _procmux_2085_CMP: UInt<1>
    wire _procmux_2086_CMP: UInt<1>
    wire _procmux_2089_CMP: UInt<1>
    wire _procmux_2090_CMP: UInt<1>
    wire _procmux_2091_CMP: UInt<1>
    wire _procmux_2093_Y: UInt<32>
    wire _ternary_rtl_datapath_v_283_15_Y: UInt<32>
    wire _ternary_rtl_datapath_v_290_19_Y: UInt<32>
    wire _ternary_rtl_datapath_v_292_20_Y: UInt<32>
    wire _ternary_rtl_datapath_v_324_83_Y: UInt<32>
    wire _ternary_rtl_datapath_v_327_84_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_67_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_68_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_72_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_73_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_77_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_78_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_86_Y: UInt<32>
    wire _ternary_rtl_datapath_v_341_87_Y: UInt<32>
    wire _ternary_rtl_datapath_v_359_31_Y: UInt<128>
    wire _ternary_rtl_datapath_v_451_107_Y: UInt<32>
    wire _ternary_rtl_datapath_v_451_115_Y: UInt<32>
    wire _ternary_rtl_datapath_v_451_123_Y: UInt<32>
    wire _ternary_rtl_datapath_v_451_99_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_102_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_103_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_110_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_111_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_118_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_119_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_126_Y: UInt<32>
    wire _ternary_rtl_datapath_v_454_127_Y: UInt<32>
    wire _ternary_rtl_datapath_v_475_48_Y: UInt<2>
    wire _ternary_rtl_datapath_v_522_58_Y: UInt<32>
    wire _xor_rtl_datapath_v_430_41_Y: UInt<32>
    wire IV_BKP_MUX_i: UInt<32>
    wire add_rd: UInt<32>
    wire add_rd_key_in: UInt<32>
    wire add_rk_out: UInt<32>
    wire add_rk_sel: UInt<1>
    wire bkp_0_: UInt<32>
    wire bkp_1_: UInt<32>
    wire bkp_2_: UInt<32>
    wire bkp_3_: UInt<32>
    wire bkp_1_0_: UInt<32>
    wire bkp_1_1_: UInt<32>
    wire bkp_1_2_: UInt<32>
    wire bkp_1_3_: UInt<32>
    wire bkp_en: UInt<4>
    wire bkp_mux_out: UInt<32>
    wire bus_swap: UInt<32>
    wire col_0_: UInt<32>
    wire col_1_: UInt<32>
    wire col_2_: UInt<32>
    wire col_3_: UInt<32>
    wire col_en: UInt<4>
    wire col_en_cnt_unit_pp1: UInt<4>
    wire col_en_cnt_unit_pp2: UInt<4>
    wire col_en_w_bypass: UInt<4>
    wire col_in: UInt<128>
    wire col_sel_pp1: UInt<2>
    wire col_sel_pp2: UInt<2>
    wire col_sel_w_bypass: UInt<2>
    wire data_in: UInt<32>
    wire enc_dec_sbox: UInt<1>
    wire g_in: UInt<32>
    wire iv_0_: UInt<32>
    wire iv_1_: UInt<32>
    wire iv_2_: UInt<32>
    wire iv_3_: UInt<32>
    wire iv_bkp_mux: UInt<32>
    wire iv_mux_out: UInt<32>
    wire key1_mux_cnt: UInt<1>
    wire key_0_: UInt<32>
    wire key_1_: UInt<32>
    wire key_2_: UInt<32>
    wire key_3_: UInt<32>
    wire key_en_pp1: UInt<4>
    wire key_en_sel: UInt<4>
    wire key_host_0_: UInt<32>
    wire key_host_1_: UInt<32>
    wire key_host_2_: UInt<32>
    wire key_host_3_: UInt<32>
    wire key_in: UInt<128>
    wire key_mux_out: UInt<32>
    wire key_mux_sel: UInt<2>
    wire key_out: UInt<128>
    wire key_out_sel_pp1: UInt<2>
    wire key_out_sel_pp2: UInt<2>
    wire key_sel_mux: UInt<1>
    wire key_sel_pp1: UInt<1>
    wire last_round_pp1: UInt<1>
    wire last_round_pp2: UInt<1>
    wire mix_out_dec: UInt<32>
    wire mix_out_enc: UInt<32>
    wire rk_out_sel: UInt<1>
    wire rk_out_sel_pp1: UInt<1>
    wire rk_out_sel_pp2: UInt<1>
    wire rk_sel_mux: UInt<2>
    wire rk_sel_pp1: UInt<2>
    wire rk_sel_pp2: UInt<2>
    wire round_pp1: UInt<4>
    wire sbox_input: UInt<32>
    wire sbox_out_dec: UInt<32>
    wire sbox_out_enc: UInt<32>
    wire sbox_pp2: UInt<32>
    wire sr_dec: UInt<128>
    wire sr_enc: UInt<128>
    wire sr_input: UInt<128>
    wire sr_input_0: UInt<32>
    wire sr_input_3: UInt<32>
    wire xor_input_bkp_iv: UInt<32>
    wire _auto_pmuxtree_cc_35_or_generator_2415: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2413: UInt<128>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2411: UInt<128>
    wire _auto_pmuxtree_cc_101_execute_2409: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2407: UInt<1>
    wire _auto_pmuxtree_cc_37_or_generator_2403: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2401: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2399: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2397: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2395: UInt<32>
    wire _auto_pmuxtree_cc_101_execute_2393: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2391: UInt<1>
    wire _auto_pmuxtree_cc_35_or_generator_2387: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2385: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2383: UInt<32>
    wire _auto_pmuxtree_cc_35_or_generator_2379: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2377: UInt<32>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2375: UInt<32>
    wire _auto_pmuxtree_cc_101_execute_2373: UInt<1>
    wire _auto_pmuxtree_cc_100_execute_2371: UInt<1>
    wire _add_rtl_datapath_v_324_82: UInt<32>
    wire _and_rtl_datapath_v_298_23: UInt<4>
    wire _and_rtl_datapath_v_299_27: UInt<4>
    wire _and_rtl_datapath_v_462_45: UInt<1>
    wire _logic_and_rtl_datapath_v_281_11: UInt<1>
    wire _logic_and_rtl_datapath_v_283_14: UInt<1>
    wire _logic_and_rtl_datapath_v_298_21: UInt<1>
    wire _logic_and_rtl_datapath_v_298_22: UInt<1>
    wire _logic_and_rtl_datapath_v_299_25: UInt<1>
    wire _logic_and_rtl_datapath_v_341_85: UInt<1>
    wire _logic_not_rtl_datapath_v_283_13: UInt<1>
    wire _logic_not_rtl_datapath_v_299_24: UInt<1>
    wire _logic_or_rtl_datapath_v_290_18: UInt<1>
    wire _logic_or_rtl_datapath_v_299_26: UInt<1>
    wire _logic_or_rtl_datapath_v_320_81: UInt<1>
    wire _logic_or_rtl_datapath_v_430_40: UInt<1>
    wire _logic_or_rtl_datapath_v_450_106: UInt<1>
    wire _logic_or_rtl_datapath_v_450_114: UInt<1>
    wire _logic_or_rtl_datapath_v_450_122: UInt<1>
    wire _logic_or_rtl_datapath_v_450_98: UInt<1>
    wire _logic_or_rtl_datapath_v_453_100: UInt<1>
    wire _logic_or_rtl_datapath_v_453_101: UInt<1>
    wire _logic_or_rtl_datapath_v_453_108: UInt<1>
    wire _logic_or_rtl_datapath_v_453_109: UInt<1>
    wire _logic_or_rtl_datapath_v_453_116: UInt<1>
    wire _logic_or_rtl_datapath_v_453_117: UInt<1>
    wire _logic_or_rtl_datapath_v_453_124: UInt<1>
    wire _logic_or_rtl_datapath_v_453_125: UInt<1>
    wire _or_rtl_datapath_v_273_6: UInt<1>
    wire _or_rtl_datapath_v_273_7: UInt<1>
    wire _or_rtl_datapath_v_273_8: UInt<1>
    wire _or_rtl_datapath_v_273_9: UInt<1>
    wire _or_rtl_datapath_v_299_28: UInt<4>
    wire _or_rtl_datapath_v_368_33: UInt<4>
    wire _or_rtl_datapath_v_402_37: UInt<3>
    wire _or_rtl_datapath_v_472_46: UInt<1>
    wire _or_rtl_datapath_v_481_51: UInt<2>
    wire _or_rtl_datapath_v_518_55: UInt<1>
    wire _or_rtl_datapath_v_518_56: UInt<1>
    reg _procdff_2133: UInt<32>, asClock(clk)
    reg _procdff_2134: UInt<32>, asClock(clk)
    reg _procdff_2135: UInt<32>, asClock(clk)
    reg _procdff_2136: UInt<32>, asClock(clk)
    reg _procdff_2137: UInt<32>, asClock(clk)
    reg _procdff_2138: UInt<32>, asClock(clk)
    reg _procdff_2139: UInt<32>, asClock(clk)
    reg _procdff_2140: UInt<32>, asClock(clk)
    reg _procdff_2141: UInt<32>, asClock(clk)
    reg _procdff_2142: UInt<32>, asClock(clk)
    reg _procdff_2143: UInt<32>, asClock(clk)
    reg _procdff_2144: UInt<32>, asClock(clk)
    reg _procdff_2145: UInt<32>, asClock(clk)
    reg _procdff_2146: UInt<32>, asClock(clk)
    reg _procdff_2147: UInt<32>, asClock(clk)
    reg _procdff_2148: UInt<32>, asClock(clk)
    reg _procdff_2149: UInt<32>, asClock(clk)
    reg _procdff_2150: UInt<32>, asClock(clk)
    reg _procdff_2151: UInt<32>, asClock(clk)
    reg _procdff_2152: UInt<32>, asClock(clk)
    reg _procdff_2153: UInt<32>, asClock(clk)
    reg _procdff_2154: UInt<32>, asClock(clk)
    reg _procdff_2155: UInt<32>, asClock(clk)
    reg _procdff_2156: UInt<32>, asClock(clk)
    reg _procdff_2157: UInt<4>, asClock(clk)
    reg _procdff_2158: UInt<4>, asClock(clk)
    reg _procdff_2159: UInt<4>, asClock(clk)
    reg _procdff_2160: UInt<4>, asClock(clk)
    reg _procdff_2161: UInt<2>, asClock(clk)
    reg _procdff_2162: UInt<2>, asClock(clk)
    reg _procdff_2163: UInt<2>, asClock(clk)
    reg _procdff_2164: UInt<2>, asClock(clk)
    reg _procdff_2165: UInt<2>, asClock(clk)
    reg _procdff_2166: UInt<2>, asClock(clk)
    reg _procdff_2167: UInt<1>, asClock(clk)
    reg _procdff_2168: UInt<1>, asClock(clk)
    reg _procdff_2169: UInt<1>, asClock(clk)
    reg _procdff_2170: UInt<1>, asClock(clk)
    reg _procdff_2171: UInt<1>, asClock(clk)
    reg _procdff_2172: UInt<32>, asClock(clk)
    wire _procmux_1896: UInt<32>
    wire _procmux_1899: UInt<32>
    wire _procmux_1901: UInt<32>
    wire _procmux_1904: UInt<32>
    wire _procmux_1906: UInt<32>
    wire _procmux_1909: UInt<32>
    wire _procmux_1911: UInt<32>
    wire _procmux_1914: UInt<32>
    wire _procmux_1916: UInt<32>
    wire _procmux_1919: UInt<32>
    wire _procmux_1921: UInt<32>
    wire _procmux_1924: UInt<32>
    wire _procmux_1926: UInt<32>
    wire _procmux_1929: UInt<32>
    wire _procmux_1931: UInt<32>
    wire _procmux_1934: UInt<32>
    wire _procmux_1936: UInt<32>
    wire _procmux_1939: UInt<32>
    wire _procmux_1941: UInt<32>
    wire _procmux_1944: UInt<32>
    wire _procmux_1946: UInt<32>
    wire _procmux_1949: UInt<32>
    wire _procmux_1951: UInt<32>
    wire _procmux_1954: UInt<32>
    wire _procmux_1956: UInt<32>
    wire _procmux_1959: UInt<32>
    wire _procmux_1961: UInt<32>
    wire _procmux_1964: UInt<32>
    wire _procmux_1967: UInt<32>
    wire _procmux_1969: UInt<32>
    wire _procmux_1972: UInt<32>
    wire _procmux_1974: UInt<32>
    wire _procmux_1977: UInt<32>
    wire _procmux_1979: UInt<32>
    wire _procmux_1982: UInt<32>
    wire _procmux_1984: UInt<32>
    wire _procmux_1987: UInt<32>
    wire _procmux_1989: UInt<32>
    wire _procmux_1992: UInt<32>
    wire _procmux_1994: UInt<32>
    wire _procmux_1997: UInt<32>
    wire _procmux_1999: UInt<32>
    wire _procmux_2002: UInt<32>
    wire _procmux_2004: UInt<32>
    wire _procmux_2007: UInt<32>
    wire _procmux_2009: UInt<32>
    wire _procmux_2012: UInt<32>
    wire _procmux_2014: UInt<32>
    wire _procmux_2017: UInt<32>
    wire _procmux_2020: UInt<1>
    wire _procmux_2023: UInt<1>
    wire _procmux_2026: UInt<1>
    wire _procmux_2029: UInt<1>
    wire _procmux_2032: UInt<2>
    wire _procmux_2035: UInt<2>
    wire _procmux_2038: UInt<2>
    wire _procmux_2041: UInt<2>
    wire _procmux_2044: UInt<4>
    wire _procmux_2047: UInt<1>
    wire _procmux_2050: UInt<2>
    wire _procmux_2053: UInt<2>
    wire _procmux_2055: UInt<4>
    wire _procmux_2058: UInt<4>
    wire _procmux_2060: UInt<4>
    wire _procmux_2063: UInt<4>
    wire _procmux_2065: UInt<4>
    wire _procmux_2068: UInt<4>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2381: UInt<32>
    wire _procmux_2072_CMP0: UInt<1>
    wire _procmux_2073_CMP0: UInt<1>
    wire _procmux_2074_CMP0: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2389: UInt<32>
    wire _procmux_2076_CMP0: UInt<1>
    wire _procmux_2077_CMP0: UInt<1>
    wire _procmux_2078_CMP0: UInt<1>
    wire _procmux_2079_CMP0: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2405: UInt<32>
    wire _procmux_2082_CMP0: UInt<1>
    wire _procmux_2083_CMP0: UInt<1>
    wire _procmux_2084_CMP0: UInt<1>
    wire _procmux_2085_CMP0: UInt<1>
    wire _procmux_2086_CMP0: UInt<1>
    wire _auto_pmuxtree_cc_65_recursive_mux_generator_2417: UInt<128>
    wire _procmux_2089_CMP0: UInt<1>
    wire _procmux_2090_CMP0: UInt<1>
    wire _procmux_2091_CMP0: UInt<1>
    wire _procmux_2093: UInt<32>
    wire _procmux_2095: UInt<32>
    wire _procmux_2098: UInt<32>
    wire _procmux_2101: UInt<32>
    wire _procmux_2104: UInt<32>
    wire _procmux_2107: UInt<32>
    wire _procmux_2110: UInt<32>
    wire _procmux_2113: UInt<32>
    wire _procmux_2116: UInt<32>
    wire _procmux_2119: UInt<32>
    wire _ternary_rtl_datapath_v_281_12: UInt<32>
    wire _ternary_rtl_datapath_v_283_15: UInt<32>
    wire _ternary_rtl_datapath_v_290_19: UInt<32>
    wire _ternary_rtl_datapath_v_292_20: UInt<32>
    wire _ternary_rtl_datapath_v_324_83: UInt<32>
    wire _ternary_rtl_datapath_v_327_84: UInt<32>
    wire _ternary_rtl_datapath_v_341_67: UInt<32>
    wire _ternary_rtl_datapath_v_341_68: UInt<32>
    wire _ternary_rtl_datapath_v_341_72: UInt<32>
    wire _ternary_rtl_datapath_v_341_73: UInt<32>
    wire _ternary_rtl_datapath_v_341_77: UInt<32>
    wire _ternary_rtl_datapath_v_341_78: UInt<32>
    wire _ternary_rtl_datapath_v_341_86: UInt<32>
    wire _ternary_rtl_datapath_v_341_87: UInt<32>
    wire _ternary_rtl_datapath_v_351_29: UInt<2>
    wire _ternary_rtl_datapath_v_359_31: UInt<128>
    wire _ternary_rtl_datapath_v_367_32: UInt<4>
    wire _ternary_rtl_datapath_v_387_34: UInt<32>
    wire _ternary_rtl_datapath_v_388_35: UInt<32>
    wire _ternary_rtl_datapath_v_430_42: UInt<32>
    wire _ternary_rtl_datapath_v_433_43: UInt<4>
    wire _ternary_rtl_datapath_v_434_44: UInt<1>
    wire _ternary_rtl_datapath_v_451_107: UInt<32>
    wire _ternary_rtl_datapath_v_451_115: UInt<32>
    wire _ternary_rtl_datapath_v_451_123: UInt<32>
    wire _ternary_rtl_datapath_v_451_99: UInt<32>
    wire _ternary_rtl_datapath_v_454_102: UInt<32>
    wire _ternary_rtl_datapath_v_454_103: UInt<32>
    wire _ternary_rtl_datapath_v_454_110: UInt<32>
    wire _ternary_rtl_datapath_v_454_111: UInt<32>
    wire _ternary_rtl_datapath_v_454_118: UInt<32>
    wire _ternary_rtl_datapath_v_454_119: UInt<32>
    wire _ternary_rtl_datapath_v_454_126: UInt<32>
    wire _ternary_rtl_datapath_v_454_127: UInt<32>
    wire _ternary_rtl_datapath_v_475_48: UInt<2>
    wire _ternary_rtl_datapath_v_475_49: UInt<2>
    wire _ternary_rtl_datapath_v_500_52: UInt<2>
    wire _ternary_rtl_datapath_v_520_57: UInt<1>
    wire _ternary_rtl_datapath_v_522_58: UInt<32>
    wire _ternary_rtl_datapath_v_522_59: UInt<32>
    wire _xor_rtl_datapath_v_283_16: UInt<32>
    wire _xor_rtl_datapath_v_430_41: UInt<32>
    wire _xor_rtl_datapath_v_516_54: UInt<32>
    wire _16: UInt<32>
    wire _17: UInt<1>
    wire _18: UInt<32>
    wire _19: UInt<32>
    wire _20: UInt<128>
    wire _21: UInt<128>
    wire _22: UInt<32>
    wire _23: UInt<32>
    wire _24: UInt<32>
    wire _25: UInt<128>
    bus_swap is invalid
    col_bus is invalid
    g_in is invalid
    key_out is invalid
    mix_out_dec is invalid
    mix_out_enc is invalid
    sbox_out_dec is invalid
    sbox_out_enc is invalid
    sr_dec is invalid
    sr_enc is invalid


    _auto_pmuxtree_cc_35_or_generator_2415 <= or(_procmux_2090_CMP, asUInt(_procmux_2089_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2413 <= mux(_procmux_2091_CMP, _ternary_rtl_datapath_v_359_31_Y, UInt<128>("h00000000000000000000000000000000"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2411 <= mux(_procmux_2089_CMP, cat(data_in, cat(data_in, cat(data_in, data_in))), cat(add_rk_out, cat(add_rk_out, cat(add_rk_out, add_rk_out))))
    _auto_pmuxtree_cc_101_execute_2409 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2408, 1))
    _auto_pmuxtree_cc_100_execute_2407 <= orr(pad(cat(_procmux_2091_CMP, cat(_procmux_2090_CMP, _procmux_2089_CMP)), 1))
    _auto_pmuxtree_cc_37_or_generator_2403 <= orr(pad(cat(_procmux_2082_CMP, cat(_procmux_2083_CMP, _procmux_2084_CMP)), 1))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2401 <= mux(_procmux_2085_CMP, col_1_, _auto_rtlil_cc_1906_Mux_2400)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2399 <= mux(_procmux_2086_CMP, col_0_, UInt<32>("h00000000"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2397 <= mux(_procmux_2082_CMP, g_in, _auto_rtlil_cc_1906_Mux_2396)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2395 <= mux(_procmux_2083_CMP, col_3_, col_2_)
    _auto_pmuxtree_cc_101_execute_2393 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2392, 1))
    _auto_pmuxtree_cc_100_execute_2391 <= orr(pad(cat(_procmux_2086_CMP, cat(_procmux_2085_CMP, cat(_procmux_2084_CMP, cat(_procmux_2083_CMP, _procmux_2082_CMP)))), 1))
    _auto_pmuxtree_cc_35_or_generator_2387 <= or(_procmux_2077_CMP, asUInt(_procmux_2076_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2385 <= mux(_procmux_2078_CMP, key_1_, key_0_)
    _auto_pmuxtree_cc_65_recursive_mux_generator_2383 <= mux(_procmux_2076_CMP, key_3_, key_2_)
    _auto_pmuxtree_cc_35_or_generator_2379 <= or(_procmux_2073_CMP, asUInt(_procmux_2072_CMP))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2377 <= mux(_procmux_2074_CMP, sbox_input, UInt<32>("h00000000"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2375 <= mux(_procmux_2072_CMP, mix_out_enc, sbox_pp2)
    _auto_pmuxtree_cc_101_execute_2373 <= not(pad(_auto_rtlil_cc_1836_ReduceOr_2372, 1))
    _auto_pmuxtree_cc_100_execute_2371 <= orr(pad(cat(_procmux_2074_CMP, cat(_procmux_2073_CMP, _procmux_2072_CMP)), 1))
    _add_rtl_datapath_v_324_82 <= add(iv_3_, asUInt(UInt<1>("h1")))
    _and_rtl_datapath_v_298_23 <= and(cat(_logic_and_rtl_datapath_v_298_22_Y, cat(_logic_and_rtl_datapath_v_298_22_Y, cat(_logic_and_rtl_datapath_v_298_22_Y, _logic_and_rtl_datapath_v_298_22_Y))), asUInt(col_en_cnt_unit_pp2))
    _and_rtl_datapath_v_299_27 <= and(cat(_logic_or_rtl_datapath_v_299_26_Y, cat(_logic_or_rtl_datapath_v_299_26_Y, cat(_logic_or_rtl_datapath_v_299_26_Y, _logic_or_rtl_datapath_v_299_26_Y))), asUInt(col_en_host))
    _and_rtl_datapath_v_462_45 <= and(bypass_key_en, asUInt(enc_dec))
    _logic_and_rtl_datapath_v_281_11 <= and(neq(first_block, UInt(0)), asUInt(neq(_logic_not_rtl_datapath_v_281_10_Y, UInt(0))))
    _logic_and_rtl_datapath_v_283_14 <= and(neq(enc_dec, UInt(0)), asUInt(neq(_logic_not_rtl_datapath_v_281_10_Y, UInt(0))))
    _logic_and_rtl_datapath_v_298_21 <= and(neq(mode_cbc, UInt(0)), asUInt(neq(last_round, UInt(0))))
    _logic_and_rtl_datapath_v_298_22 <= and(neq(_logic_and_rtl_datapath_v_298_21_Y, UInt(0)), asUInt(neq(enc_dec, UInt(0))))
    _logic_and_rtl_datapath_v_299_25 <= and(neq(mode_cbc, UInt(0)), asUInt(neq(_logic_not_rtl_datapath_v_299_24_Y, UInt(0))))
    _logic_and_rtl_datapath_v_341_85 <= and(neq(mode_cbc, UInt(0)), asUInt(neq(enc_dec, UInt(0))))
    _logic_not_rtl_datapath_v_283_13 <= eq(mode_ctr, UInt(0))
    _logic_not_rtl_datapath_v_299_24 <= eq(enc_dec, UInt(0))
    _logic_or_rtl_datapath_v_290_18 <= or(neq(enc_dec, UInt(0)), asUInt(neq(last_round, UInt(0))))
    _logic_or_rtl_datapath_v_299_26 <= or(neq(_logic_and_rtl_datapath_v_299_25_Y, UInt(0)), asUInt(neq(mode_ctr, UInt(0))))
    _logic_or_rtl_datapath_v_320_81 <= or(neq(bits(iv_en, 3, 3), UInt(0)), asUInt(neq(iv_cnt_en, UInt(0))))
    _logic_or_rtl_datapath_v_430_40 <= or(neq(enc_dec, UInt(0)), asUInt(neq(mode_ctr, UInt(0))))
    _logic_or_rtl_datapath_v_450_106 <= or(neq(bits(key_host_en, 2, 2), UInt(0)), asUInt(neq(key_derivation_en, UInt(0))))
    _logic_or_rtl_datapath_v_450_114 <= or(neq(bits(key_host_en, 1, 1), UInt(0)), asUInt(neq(key_derivation_en, UInt(0))))
    _logic_or_rtl_datapath_v_450_122 <= or(neq(bits(key_host_en, 0, 0), UInt(0)), asUInt(neq(key_derivation_en, UInt(0))))
    _logic_or_rtl_datapath_v_450_98 <= or(neq(bits(key_host_en, 3, 3), UInt(0)), asUInt(neq(key_derivation_en, UInt(0))))
    _logic_or_rtl_datapath_v_453_100 <= or(neq(bits(key_en_sel, 3, 3), UInt(0)), asUInt(neq(key_init, UInt(0))))
    _logic_or_rtl_datapath_v_453_101 <= or(neq(_logic_or_rtl_datapath_v_453_100_Y, UInt(0)), asUInt(neq(bits(key_host_en, 3, 3), UInt(0))))
    _logic_or_rtl_datapath_v_453_108 <= or(neq(bits(key_en_sel, 2, 2), UInt(0)), asUInt(neq(key_init, UInt(0))))
    _logic_or_rtl_datapath_v_453_109 <= or(neq(_logic_or_rtl_datapath_v_453_108_Y, UInt(0)), asUInt(neq(bits(key_host_en, 2, 2), UInt(0))))
    _logic_or_rtl_datapath_v_453_116 <= or(neq(bits(key_en_sel, 1, 1), UInt(0)), asUInt(neq(key_init, UInt(0))))
    _logic_or_rtl_datapath_v_453_117 <= or(neq(_logic_or_rtl_datapath_v_453_116_Y, UInt(0)), asUInt(neq(bits(key_host_en, 1, 1), UInt(0))))
    _logic_or_rtl_datapath_v_453_124 <= or(neq(bits(key_en_sel, 0, 0), UInt(0)), asUInt(neq(key_init, UInt(0))))
    _logic_or_rtl_datapath_v_453_125 <= or(neq(_logic_or_rtl_datapath_v_453_124_Y, UInt(0)), asUInt(neq(bits(key_host_en, 0, 0), UInt(0))))
    _or_rtl_datapath_v_273_6 <= or(bits(col_en, 0, 0), asUInt(bits(iv_sel_rd, 0, 0)))
    _or_rtl_datapath_v_273_7 <= or(bits(col_en, 1, 1), asUInt(bits(iv_sel_rd, 1, 1)))
    _or_rtl_datapath_v_273_8 <= or(bits(col_en, 2, 2), asUInt(bits(iv_sel_rd, 2, 2)))
    _or_rtl_datapath_v_273_9 <= or(bits(col_en, 3, 3), asUInt(bits(iv_sel_rd, 3, 3)))
    _or_rtl_datapath_v_299_28 <= or(_and_rtl_datapath_v_298_23_Y, asUInt(_and_rtl_datapath_v_299_27_Y))
    _or_rtl_datapath_v_368_33 <= or(col_en_host, asUInt(col_en_w_bypass))
    _or_rtl_datapath_v_402_37 <= or(sbox_sel, asUInt(col_sel_host))
    _or_rtl_datapath_v_472_46 <= or(enc_dec, asUInt(key_gen))
    _or_rtl_datapath_v_481_51 <= or(key_mux_sel, asUInt(key_sel_rd))
    _or_rtl_datapath_v_518_55 <= or(enc_dec, asUInt(mode_ctr))
    _or_rtl_datapath_v_518_56 <= or(_or_rtl_datapath_v_475_47_Y, asUInt(bypass_rk))
    _procdff_2133 <= _0_key_host_0__31_0_
    _procdff_2134 <= _0_key_0__31_0_
    _procdff_2135 <= _0_key_host_1__31_0_
    _procdff_2136 <= _0_key_1__31_0_
    _procdff_2137 <= _0_key_host_2__31_0_
    _procdff_2138 <= _0_key_2__31_0_
    _procdff_2139 <= _0_key_host_3__31_0_
    _procdff_2140 <= _0_key_3__31_0_
    _procdff_2141 <= _0_col_0__31_0_
    _procdff_2142 <= _0_col_1__31_0_
    _procdff_2143 <= _0_col_2__31_0_
    _procdff_2144 <= _0_col_3__31_0_
    _procdff_2145 <= _0_iv_3__31_0_
    _procdff_2146 <= _0_bkp_3__31_0_
    _procdff_2147 <= _0_bkp_1_3__31_0_
    _procdff_2148 <= _0_iv_2__31_0_
    _procdff_2149 <= _0_bkp_2__31_0_
    _procdff_2150 <= _0_bkp_1_2__31_0_
    _procdff_2151 <= _0_iv_1__31_0_
    _procdff_2152 <= _0_bkp_1__31_0_
    _procdff_2153 <= _0_bkp_1_1__31_0_
    _procdff_2154 <= _0_iv_0__31_0_
    _procdff_2155 <= _0_bkp_0__31_0_
    _procdff_2156 <= _0_bkp_1_0__31_0_
    _procdff_2157 <= _0_col_en_cnt_unit_pp1_3_0_
    _procdff_2158 <= _0_col_en_cnt_unit_pp2_3_0_
    _procdff_2159 <= _0_key_en_pp1_3_0_
    _procdff_2160 <= _0_round_pp1_3_0_
    _procdff_2161 <= _0_col_sel_pp1_1_0_
    _procdff_2162 <= _0_col_sel_pp2_1_0_
    _procdff_2163 <= _0_key_out_sel_pp1_1_0_
    _procdff_2164 <= _0_key_out_sel_pp2_1_0_
    _procdff_2165 <= _0_rk_sel_pp1_1_0_
    _procdff_2166 <= _0_rk_sel_pp2_1_0_
    _procdff_2167 <= _0_key_sel_pp1_0_0_
    _procdff_2168 <= _0_rk_out_sel_pp1_0_0_
    _procdff_2169 <= _0_rk_out_sel_pp2_0_0_
    _procdff_2170 <= _0_last_round_pp1_0_0_
    _procdff_2171 <= _0_last_round_pp2_0_0_
    _procdff_2172 <= _0_sbox_pp2_31_0_
    _procmux_1896 <= mux(_logic_or_rtl_datapath_v_453_125_Y, _ternary_rtl_datapath_v_454_127_Y, key_0_)
    _procmux_1899 <= mux(rst_n, _procmux_1896_Y, UInt<32>("h00000000"))
    _procmux_1901 <= mux(_logic_or_rtl_datapath_v_450_122_Y, _ternary_rtl_datapath_v_451_123_Y, key_host_0_)
    _procmux_1904 <= mux(rst_n, _procmux_1901_Y, UInt<32>("h00000000"))
    _procmux_1906 <= mux(_logic_or_rtl_datapath_v_453_117_Y, _ternary_rtl_datapath_v_454_119_Y, key_1_)
    _procmux_1909 <= mux(rst_n, _procmux_1906_Y, UInt<32>("h00000000"))
    _procmux_1911 <= mux(_logic_or_rtl_datapath_v_450_114_Y, _ternary_rtl_datapath_v_451_115_Y, key_host_1_)
    _procmux_1914 <= mux(rst_n, _procmux_1911_Y, UInt<32>("h00000000"))
    _procmux_1916 <= mux(_logic_or_rtl_datapath_v_453_109_Y, _ternary_rtl_datapath_v_454_111_Y, key_2_)
    _procmux_1919 <= mux(rst_n, _procmux_1916_Y, UInt<32>("h00000000"))
    _procmux_1921 <= mux(_logic_or_rtl_datapath_v_450_106_Y, _ternary_rtl_datapath_v_451_107_Y, key_host_2_)
    _procmux_1924 <= mux(rst_n, _procmux_1921_Y, UInt<32>("h00000000"))
    _procmux_1926 <= mux(_logic_or_rtl_datapath_v_453_101_Y, _ternary_rtl_datapath_v_454_103_Y, key_3_)
    _procmux_1929 <= mux(rst_n, _procmux_1926_Y, UInt<32>("h00000000"))
    _procmux_1931 <= mux(_logic_or_rtl_datapath_v_450_98_Y, _ternary_rtl_datapath_v_451_99_Y, key_host_3_)
    _procmux_1934 <= mux(rst_n, _procmux_1931_Y, UInt<32>("h00000000"))
    _procmux_1936 <= mux(bits(col_en, 0, 0), bits(col_in, 127, 96), col_0_)
    _procmux_1939 <= mux(rst_n, _procmux_1936_Y, UInt<32>("h00000000"))
    _procmux_1941 <= mux(bits(col_en, 1, 1), bits(col_in, 95, 64), col_1_)
    _procmux_1944 <= mux(rst_n, _procmux_1941_Y, UInt<32>("h00000000"))
    _procmux_1946 <= mux(bits(col_en, 2, 2), bits(col_in, 63, 32), col_2_)
    _procmux_1949 <= mux(rst_n, _procmux_1946_Y, UInt<32>("h00000000"))
    _procmux_1951 <= mux(bits(col_en, 3, 3), bits(col_in, 31, 0), col_3_)
    _procmux_1954 <= mux(rst_n, _procmux_1951_Y, UInt<32>("h00000000"))
    _procmux_1956 <= mux(bits(bkp_en, 3, 3), bits(col_in, 127, 96), bkp_1_3_)
    _procmux_1959 <= mux(rst_n, _procmux_1956_Y, UInt<32>("h00000000"))
    _procmux_1961 <= mux(bits(bkp_en, 3, 3), _ternary_rtl_datapath_v_341_87_Y, bkp_3_)
    _procmux_1964 <= mux(rst_n, _procmux_1961_Y, UInt<32>("h00000000"))
    _procmux_1967 <= mux(mode_ctr, _ternary_rtl_datapath_v_324_83_Y, _ternary_rtl_datapath_v_327_84_Y)
    _procmux_1969 <= mux(_logic_or_rtl_datapath_v_320_81_Y, _procmux_1967_Y, iv_3_)
    _procmux_1972 <= mux(rst_n, _procmux_1969_Y, UInt<32>("h00000000"))
    _procmux_1974 <= mux(bits(bkp_en, 2, 2), bits(col_in, 95, 64), bkp_1_2_)
    _procmux_1977 <= mux(rst_n, _procmux_1974_Y, UInt<32>("h00000000"))
    _procmux_1979 <= mux(bits(bkp_en, 2, 2), _ternary_rtl_datapath_v_341_78_Y, bkp_2_)
    _procmux_1982 <= mux(rst_n, _procmux_1979_Y, UInt<32>("h00000000"))
    _procmux_1984 <= mux(bits(iv_en, 2, 2), bus_in, iv_2_)
    _procmux_1987 <= mux(rst_n, _procmux_1984_Y, UInt<32>("h00000000"))
    _procmux_1989 <= mux(bits(bkp_en, 1, 1), bits(col_in, 63, 32), bkp_1_1_)
    _procmux_1992 <= mux(rst_n, _procmux_1989_Y, UInt<32>("h00000000"))
    _procmux_1994 <= mux(bits(bkp_en, 1, 1), _ternary_rtl_datapath_v_341_73_Y, bkp_1_)
    _procmux_1997 <= mux(rst_n, _procmux_1994_Y, UInt<32>("h00000000"))
    _procmux_1999 <= mux(bits(iv_en, 1, 1), bus_in, iv_1_)
    _procmux_2002 <= mux(rst_n, _procmux_1999_Y, UInt<32>("h00000000"))
    _procmux_2004 <= mux(bits(bkp_en, 0, 0), bits(col_in, 31, 0), bkp_1_0_)
    _procmux_2007 <= mux(rst_n, _procmux_2004_Y, UInt<32>("h00000000"))
    _procmux_2009 <= mux(bits(bkp_en, 0, 0), _ternary_rtl_datapath_v_341_68_Y, bkp_0_)
    _procmux_2012 <= mux(rst_n, _procmux_2009_Y, UInt<32>("h00000000"))
    _procmux_2014 <= mux(bits(iv_en, 0, 0), bus_in, iv_0_)
    _procmux_2017 <= mux(rst_n, _procmux_2014_Y, UInt<32>("h00000000"))
    _procmux_2020 <= mux(rst_n, last_round_pp1, UInt<1>("h0"))
    _procmux_2023 <= mux(rst_n, last_round, UInt<1>("h1"))
    _procmux_2026 <= mux(rst_n, rk_out_sel_pp1, UInt<1>("h1"))
    _procmux_2029 <= mux(rst_n, rk_out_sel, UInt<1>("h1"))
    _procmux_2032 <= mux(rst_n, rk_sel_pp1, UInt<2>("h0"))
    _procmux_2035 <= mux(rst_n, rk_sel, UInt<2>("h0"))
    _procmux_2038 <= mux(rst_n, key_out_sel_pp1, UInt<2>("h0"))
    _procmux_2041 <= mux(rst_n, key_out_sel, UInt<2>("h0"))
    _procmux_2044 <= mux(rst_n, round, UInt<4>("h0"))
    _procmux_2047 <= mux(rst_n, key_sel, UInt<1>("h0"))
    _procmux_2050 <= mux(rst_n, col_sel_pp1, UInt<2>("h2"))
    _procmux_2053 <= mux(rst_n, col_sel, UInt<2>("h2"))
    _procmux_2055 <= mux(bypass_key_en, key_en_pp1, key_en)
    _procmux_2058 <= mux(rst_n, _procmux_2055_Y, UInt<4>("h0"))
    _procmux_2060 <= mux(bypass_rk, col_en_cnt_unit_pp2, col_en_cnt_unit_pp1)
    _procmux_2063 <= mux(rst_n, _procmux_2060_Y, UInt<4>("h0"))
    _procmux_2065 <= mux(bypass_rk, col_en_cnt_unit_pp1, col_en_cnt_unit)
    _procmux_2068 <= mux(rst_n, _procmux_2065_Y, UInt<4>("h0"))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2381 <= mux(_auto_rtlil_cc_1863_Or_2380, _auto_rtlil_cc_1906_Mux_2376, _auto_rtlil_cc_1906_Mux_2378)
    _procmux_2072_CMP0 <= eq(rk_sel_mux, asUInt(UInt<2>("h2")))
    _procmux_2073_CMP0 <= eq(rk_sel_mux, asUInt(UInt<2>("h1")))
    _procmux_2074_CMP0 <= eq(rk_sel_mux, UInt(0))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2389 <= mux(_auto_rtlil_cc_1863_Or_2388, _auto_rtlil_cc_1906_Mux_2384, _auto_rtlil_cc_1906_Mux_2386)
    _procmux_2076_CMP0 <= eq(_or_rtl_datapath_v_481_51_Y, asUInt(UInt<2>("h3")))
    _procmux_2077_CMP0 <= eq(_or_rtl_datapath_v_481_51_Y, asUInt(UInt<2>("h2")))
    _procmux_2078_CMP0 <= eq(_or_rtl_datapath_v_481_51_Y, asUInt(UInt<2>("h1")))
    _procmux_2079_CMP0 <= eq(_or_rtl_datapath_v_481_51_Y, UInt(0))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2405 <= mux(_auto_rtlil_cc_1836_ReduceOr_2404, _auto_rtlil_cc_1906_Mux_2398, _auto_rtlil_cc_1906_Mux_2402)
    _procmux_2082_CMP0 <= eq(_or_rtl_datapath_v_402_37_Y, asUInt(UInt<3>("h4")))
    _procmux_2083_CMP0 <= eq(_or_rtl_datapath_v_402_37_Y, asUInt(UInt<3>("h3")))
    _procmux_2084_CMP0 <= eq(_or_rtl_datapath_v_402_37_Y, asUInt(UInt<3>("h2")))
    _procmux_2085_CMP0 <= eq(_or_rtl_datapath_v_402_37_Y, asUInt(UInt<3>("h1")))
    _procmux_2086_CMP0 <= eq(_or_rtl_datapath_v_402_37_Y, UInt(0))
    _auto_pmuxtree_cc_65_recursive_mux_generator_2417 <= mux(_auto_rtlil_cc_1863_Or_2416, _auto_rtlil_cc_1906_Mux_2412, _auto_rtlil_cc_1906_Mux_2414)
    _procmux_2089_CMP0 <= eq(col_sel_w_bypass, asUInt(UInt<2>("h2")))
    _procmux_2090_CMP0 <= eq(col_sel_w_bypass, asUInt(UInt<2>("h1")))
    _procmux_2091_CMP0 <= eq(col_sel_w_bypass, UInt(0))
    _procmux_2093 <= mux(mode_ctr, _ternary_rtl_datapath_v_292_20_Y, bus_swap)
    _procmux_2095 <= mux(mode_cbc, _ternary_rtl_datapath_v_290_19_Y, _procmux_2093_Y)
    _procmux_2098 <= mux(_or_rtl_datapath_v_273_9_Y, bkp_3_, _3_bkp_mux_out_31_0_)
    _procmux_2101 <= mux(_or_rtl_datapath_v_273_9_Y, iv_3_, _3_iv_mux_out_31_0_)
    _procmux_2104 <= mux(_or_rtl_datapath_v_273_8_Y, bkp_2_, _2_bkp_mux_out_31_0_)
    _procmux_2107 <= mux(_or_rtl_datapath_v_273_8_Y, iv_2_, _2_iv_mux_out_31_0_)
    _procmux_2110 <= mux(_or_rtl_datapath_v_273_7_Y, bkp_1_, _1_bkp_mux_out_31_0_)
    _procmux_2113 <= mux(_or_rtl_datapath_v_273_7_Y, iv_1_, _1_iv_mux_out_31_0_)
    _procmux_2116 <= mux(_or_rtl_datapath_v_273_6_Y, bkp_0_, UInt<32>("h00000000"))
    _procmux_2119 <= mux(_or_rtl_datapath_v_273_6_Y, iv_0_, UInt<32>("h00000000"))
    _ternary_rtl_datapath_v_281_12 <= mux(_logic_and_rtl_datapath_v_281_11_Y, iv_mux_out, bkp_mux_out)
    _ternary_rtl_datapath_v_283_15 <= mux(_logic_and_rtl_datapath_v_283_14_Y, bus_swap, add_rk_out)
    _ternary_rtl_datapath_v_290_19 <= mux(_logic_or_rtl_datapath_v_290_18_Y, xor_input_bkp_iv, bus_swap)
    _ternary_rtl_datapath_v_292_20 <= mux(last_round, xor_input_bkp_iv, iv_mux_out)
    _ternary_rtl_datapath_v_324_83 <= mux(iv_cnt_sel, _add_rtl_datapath_v_324_82_Y, bus_in)
    _ternary_rtl_datapath_v_327_84 <= mux(iv_cnt_sel, iv_3_, bus_in)
    _ternary_rtl_datapath_v_341_67 <= mux(_logic_and_rtl_datapath_v_341_66_Y, bits(col_in, 31, 0), bkp_1_0_)
    _ternary_rtl_datapath_v_341_68 <= mux(mode_ctr, bus_swap, _ternary_rtl_datapath_v_341_67_Y)
    _ternary_rtl_datapath_v_341_72 <= mux(_logic_and_rtl_datapath_v_341_66_Y, bits(col_in, 63, 32), bkp_1_1_)
    _ternary_rtl_datapath_v_341_73 <= mux(mode_ctr, bus_swap, _ternary_rtl_datapath_v_341_72_Y)
    _ternary_rtl_datapath_v_341_77 <= mux(_logic_and_rtl_datapath_v_341_66_Y, bits(col_in, 95, 64), bkp_1_2_)
    _ternary_rtl_datapath_v_341_78 <= mux(mode_ctr, bus_swap, _ternary_rtl_datapath_v_341_77_Y)
    _ternary_rtl_datapath_v_341_86 <= mux(_logic_and_rtl_datapath_v_341_66_Y, bits(col_in, 127, 96), bkp_1_3_)
    _ternary_rtl_datapath_v_341_87 <= mux(mode_ctr, bus_swap, _ternary_rtl_datapath_v_341_86_Y)
    _ternary_rtl_datapath_v_351_29 <= mux(bypass_rk, col_sel, col_sel_pp2)
    _ternary_rtl_datapath_v_359_31 <= mux(enc_dec, sr_enc, sr_dec)
    _ternary_rtl_datapath_v_367_32 <= mux(bypass_rk, col_en_cnt_unit, col_en_cnt_unit_pp2)
    _ternary_rtl_datapath_v_387_34 <= mux(enc_dec, add_rk_out, col_3_)
    _ternary_rtl_datapath_v_388_35 <= mux(enc_dec, col_0_, add_rk_out)
    _ternary_rtl_datapath_v_430_42 <= mux(_logic_or_rtl_datapath_v_430_40_Y, sbox_out_enc, _xor_rtl_datapath_v_430_41_Y)
    _ternary_rtl_datapath_v_433_43 <= mux(bypass_key_en, key_en, key_en_pp1)
    _ternary_rtl_datapath_v_434_44 <= mux(bypass_key_en, key_sel, key_sel_pp1)
    _ternary_rtl_datapath_v_451_107 <= mux(key_derivation_en, key_2_, bus_in)
    _ternary_rtl_datapath_v_451_115 <= mux(key_derivation_en, key_1_, bus_in)
    _ternary_rtl_datapath_v_451_123 <= mux(key_derivation_en, key_0_, bus_in)
    _ternary_rtl_datapath_v_451_99 <= mux(key_derivation_en, key_3_, bus_in)
    _ternary_rtl_datapath_v_454_102 <= mux(bits(key_host_en, 3, 3), bus_in, key_host_3_)
    _ternary_rtl_datapath_v_454_103 <= mux(key_sel_mux, bits(key_out, 31, 0), _ternary_rtl_datapath_v_454_102_Y)
    _ternary_rtl_datapath_v_454_110 <= mux(bits(key_host_en, 2, 2), bus_in, key_host_2_)
    _ternary_rtl_datapath_v_454_111 <= mux(key_sel_mux, bits(key_out, 63, 32), _ternary_rtl_datapath_v_454_110_Y)
    _ternary_rtl_datapath_v_454_118 <= mux(bits(key_host_en, 1, 1), bus_in, key_host_1_)
    _ternary_rtl_datapath_v_454_119 <= mux(key_sel_mux, bits(key_out, 95, 64), _ternary_rtl_datapath_v_454_118_Y)
    _ternary_rtl_datapath_v_454_126 <= mux(bits(key_host_en, 0, 0), bus_in, key_host_0_)
    _ternary_rtl_datapath_v_454_127 <= mux(key_sel_mux, bits(key_out, 127, 96), _ternary_rtl_datapath_v_454_126_Y)
    _ternary_rtl_datapath_v_475_48 <= mux(_or_rtl_datapath_v_475_47_Y, key_out_sel_pp2, key_out_sel_pp1)
    _ternary_rtl_datapath_v_475_49 <= mux(bypass_key_en, key_out_sel, _ternary_rtl_datapath_v_475_48_Y)
    _ternary_rtl_datapath_v_500_52 <= mux(bypass_rk, rk_sel, rk_sel_pp2)
    _ternary_rtl_datapath_v_520_57 <= mux(bypass_rk, rk_out_sel, rk_out_sel_pp2)
    _ternary_rtl_datapath_v_522_58 <= mux(last_round_pp2, sbox_pp2, mix_out_dec)
    _ternary_rtl_datapath_v_522_59 <= mux(add_rk_sel, add_rd, _ternary_rtl_datapath_v_522_58_Y)
    _xor_rtl_datapath_v_283_16 <= xor(_ternary_rtl_datapath_v_283_15_Y, asUInt(iv_bkp_mux))
    _xor_rtl_datapath_v_430_41 <= xor(sbox_out_dec, asUInt(key_mux_out))
    _xor_rtl_datapath_v_516_54 <= xor(add_rd_key_in, asUInt(key_mux_out))
    _16 <= UInt<32>("h00000004")
    _17 <= end_comp
    _18 <= iv_mux_out
    _19 <= key_mux_out
    _20 <= cat(key_0_, cat(key_1_, cat(key_2_, key_3_)))
    _21 <= cat(sr_input_0, cat(col_1_, cat(col_2_, sr_input_3)))
    _22 <= _auto_rtlil_cc_1906_Mux_2382
    _23 <= _auto_rtlil_cc_1906_Mux_2390
    _24 <= _auto_rtlil_cc_1906_Mux_2406
    _25 <= _auto_rtlil_cc_1906_Mux_2418

    inst KEY_EXPANDER of key_expander
    KEY_EXPANDER.add_w_out <= key1_mux_cnt
    KEY_EXPANDER.enc_dec <= enc_dec_sbox
    g_in <= KEY_EXPANDER.g_in
    KEY_EXPANDER.g_out <= sbox_out_enc
    KEY_EXPANDER.key_in <= cat(key_0_, cat(key_1_, cat(key_2_, key_3_)))
    key_out <= KEY_EXPANDER.key_out
    KEY_EXPANDER.round <= round_pp1
    inst MIX_COL of mix_columns
    MIX_COL.mix_in <= sbox_pp2
    mix_out_dec <= MIX_COL.mix_out_dec
    mix_out_enc <= MIX_COL.mix_out_enc
    inst SBOX of sBox
    SBOX.clk <= clk
    SBOX.enc_dec <= enc_dec_sbox
    SBOX.sbox_in <= sbox_input
    sbox_out_dec <= SBOX.sbox_out_dec
    sbox_out_enc <= SBOX.sbox_out_enc
    inst SHIFT_ROW of shift_rows
    SHIFT_ROW.data_in <= cat(sr_input_0, cat(col_1_, cat(col_2_, sr_input_3)))
    sr_dec <= SHIFT_ROW.data_out_dec
    sr_enc <= SHIFT_ROW.data_out_enc
    inst SWAP_IN of data_swap
    SWAP_IN.data_in <= bus_in
    bus_swap <= SWAP_IN.data_swap
    SWAP_IN.swap_type <= data_type
    inst SWAP_OUT of data_swap
    SWAP_OUT.data_in <= sbox_input
    col_bus <= SWAP_OUT.data_swap
    SWAP_OUT.swap_type <= data_type
    _auto_rtlil_cc_1906_Mux_2418 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2417, 127, 0)
    _auto_rtlil_cc_1863_Or_2416 <= bits(_auto_pmuxtree_cc_35_or_generator_2415, 0, 0)
    _auto_rtlil_cc_1906_Mux_2414 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2413, 127, 0)
    _auto_rtlil_cc_1906_Mux_2412 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2411, 127, 0)
    _auto_rtlil_cc_1832_Not_2410 <= bits(_auto_pmuxtree_cc_101_execute_2409, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2408 <= bits(_auto_pmuxtree_cc_100_execute_2407, 0, 0)
    _auto_rtlil_cc_1906_Mux_2406 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2405, 31, 0)
    _auto_rtlil_cc_1836_ReduceOr_2404 <= bits(_auto_pmuxtree_cc_37_or_generator_2403, 0, 0)
    _auto_rtlil_cc_1906_Mux_2402 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2401, 31, 0)
    _auto_rtlil_cc_1906_Mux_2400 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2399, 31, 0)
    _auto_rtlil_cc_1906_Mux_2398 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2397, 31, 0)
    _auto_rtlil_cc_1906_Mux_2396 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2395, 31, 0)
    _auto_rtlil_cc_1832_Not_2394 <= bits(_auto_pmuxtree_cc_101_execute_2393, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2392 <= bits(_auto_pmuxtree_cc_100_execute_2391, 0, 0)
    _auto_rtlil_cc_1906_Mux_2390 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2389, 31, 0)
    _auto_rtlil_cc_1863_Or_2388 <= bits(_auto_pmuxtree_cc_35_or_generator_2387, 0, 0)
    _auto_rtlil_cc_1906_Mux_2386 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2385, 31, 0)
    _auto_rtlil_cc_1906_Mux_2384 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2383, 31, 0)
    _auto_rtlil_cc_1906_Mux_2382 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2381, 31, 0)
    _auto_rtlil_cc_1863_Or_2380 <= bits(_auto_pmuxtree_cc_35_or_generator_2379, 0, 0)
    _auto_rtlil_cc_1906_Mux_2378 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2377, 31, 0)
    _auto_rtlil_cc_1906_Mux_2376 <= bits(_auto_pmuxtree_cc_65_recursive_mux_generator_2375, 31, 0)
    _auto_rtlil_cc_1832_Not_2374 <= bits(_auto_pmuxtree_cc_101_execute_2373, 0, 0)
    _auto_rtlil_cc_1836_ReduceOr_2372 <= bits(_auto_pmuxtree_cc_100_execute_2371, 0, 0)
    _0_bkp_0__31_0_ <= bits(_procmux_2012, 31, 0)
    _0_bkp_1__31_0_ <= bits(_procmux_1997, 31, 0)
    _0_bkp_2__31_0_ <= bits(_procmux_1982, 31, 0)
    _0_bkp_3__31_0_ <= bits(_procmux_1964, 31, 0)
    _0_bkp_1_0__31_0_ <= bits(_procmux_2007, 31, 0)
    _0_bkp_1_1__31_0_ <= bits(_procmux_1992, 31, 0)
    _0_bkp_1_2__31_0_ <= bits(_procmux_1977, 31, 0)
    _0_bkp_1_3__31_0_ <= bits(_procmux_1959, 31, 0)
    _0_col_0__31_0_ <= bits(_procmux_1939, 31, 0)
    _0_col_1__31_0_ <= bits(_procmux_1944, 31, 0)
    _0_col_2__31_0_ <= bits(_procmux_1949, 31, 0)
    _0_col_3__31_0_ <= bits(_procmux_1954, 31, 0)
    _0_col_en_cnt_unit_pp1_3_0_ <= bits(_procmux_2068, 3, 0)
    _0_col_en_cnt_unit_pp2_3_0_ <= bits(_procmux_2063, 3, 0)
    _0_col_sel_pp1_1_0_ <= bits(_procmux_2053, 1, 0)
    _0_col_sel_pp2_1_0_ <= bits(_procmux_2050, 1, 0)
    _0_iv_0__31_0_ <= bits(_procmux_2017, 31, 0)
    _0_iv_1__31_0_ <= bits(_procmux_2002, 31, 0)
    _0_iv_2__31_0_ <= bits(_procmux_1987, 31, 0)
    _0_iv_3__31_0_ <= bits(_procmux_1972, 31, 0)
    _0_key_0__31_0_ <= bits(_procmux_1899, 31, 0)
    _0_key_1__31_0_ <= bits(_procmux_1909, 31, 0)
    _0_key_2__31_0_ <= bits(_procmux_1919, 31, 0)
    _0_key_3__31_0_ <= bits(_procmux_1929, 31, 0)
    _0_key_en_pp1_3_0_ <= bits(_procmux_2058, 3, 0)
    _0_key_host_0__31_0_ <= bits(_procmux_1904, 31, 0)
    _0_key_host_1__31_0_ <= bits(_procmux_1914, 31, 0)
    _0_key_host_2__31_0_ <= bits(_procmux_1924, 31, 0)
    _0_key_host_3__31_0_ <= bits(_procmux_1934, 31, 0)
    _0_key_out_sel_pp1_1_0_ <= bits(_procmux_2041, 1, 0)
    _0_key_out_sel_pp2_1_0_ <= bits(_procmux_2038, 1, 0)
    _0_key_sel_pp1_0_0_ <= bits(_procmux_2047, 0, 0)
    _0_last_round_pp1_0_0_ <= bits(_procmux_2023, 0, 0)
    _0_last_round_pp2_0_0_ <= bits(_procmux_2020, 0, 0)
    _0_rk_out_sel_pp1_0_0_ <= bits(_procmux_2029, 0, 0)
    _0_rk_out_sel_pp2_0_0_ <= bits(_procmux_2026, 0, 0)
    _0_rk_sel_pp1_1_0_ <= bits(_procmux_2035, 1, 0)
    _0_rk_sel_pp2_1_0_ <= bits(_procmux_2032, 1, 0)
    _0_round_pp1_3_0_ <= bits(_procmux_2044, 3, 0)
    _0_sbox_pp2_31_0_ <= bits(_ternary_rtl_datapath_v_430_42, 31, 0)
    _1_bkp_mux_out_31_0_ <= bits(_procmux_2116, 31, 0)
    _1_iv_mux_out_31_0_ <= bits(_procmux_2119, 31, 0)
    _2_bkp_mux_out_31_0_ <= bits(_procmux_2110, 31, 0)
    _2_iv_mux_out_31_0_ <= bits(_procmux_2113, 31, 0)
    _3_bkp_mux_out_31_0_ <= bits(_procmux_2104, 31, 0)
    _3_iv_mux_out_31_0_ <= bits(_procmux_2107, 31, 0)
    _add_rtl_datapath_v_324_82_Y <= bits(_add_rtl_datapath_v_324_82, 31, 0)
    _and_rtl_datapath_v_298_23_Y <= bits(_and_rtl_datapath_v_298_23, 3, 0)
    _and_rtl_datapath_v_299_27_Y <= bits(_and_rtl_datapath_v_299_27, 3, 0)
    _logic_and_rtl_datapath_v_281_11_Y <= bits(_logic_and_rtl_datapath_v_281_11, 0, 0)
    _logic_and_rtl_datapath_v_283_14_Y <= bits(_logic_and_rtl_datapath_v_283_14, 0, 0)
    _logic_and_rtl_datapath_v_298_21_Y <= bits(_logic_and_rtl_datapath_v_298_21, 0, 0)
    _logic_and_rtl_datapath_v_298_22_Y <= bits(_logic_and_rtl_datapath_v_298_22, 0, 0)
    _logic_and_rtl_datapath_v_299_25_Y <= bits(_logic_and_rtl_datapath_v_299_25, 0, 0)
    _logic_and_rtl_datapath_v_341_66_Y <= bits(_logic_and_rtl_datapath_v_341_85, 0, 0)
    _logic_not_rtl_datapath_v_281_10_Y <= bits(_logic_not_rtl_datapath_v_283_13, 0, 0)
    _logic_not_rtl_datapath_v_299_24_Y <= bits(_logic_not_rtl_datapath_v_299_24, 0, 0)
    _logic_or_rtl_datapath_v_290_18_Y <= bits(_logic_or_rtl_datapath_v_290_18, 0, 0)
    _logic_or_rtl_datapath_v_299_26_Y <= bits(_logic_or_rtl_datapath_v_299_26, 0, 0)
    _logic_or_rtl_datapath_v_320_81_Y <= bits(_logic_or_rtl_datapath_v_320_81, 0, 0)
    _logic_or_rtl_datapath_v_430_40_Y <= bits(_logic_or_rtl_datapath_v_430_40, 0, 0)
    _logic_or_rtl_datapath_v_450_106_Y <= bits(_logic_or_rtl_datapath_v_450_106, 0, 0)
    _logic_or_rtl_datapath_v_450_114_Y <= bits(_logic_or_rtl_datapath_v_450_114, 0, 0)
    _logic_or_rtl_datapath_v_450_122_Y <= bits(_logic_or_rtl_datapath_v_450_122, 0, 0)
    _logic_or_rtl_datapath_v_450_98_Y <= bits(_logic_or_rtl_datapath_v_450_98, 0, 0)
    _logic_or_rtl_datapath_v_453_100_Y <= bits(_logic_or_rtl_datapath_v_453_100, 0, 0)
    _logic_or_rtl_datapath_v_453_101_Y <= bits(_logic_or_rtl_datapath_v_453_101, 0, 0)
    _logic_or_rtl_datapath_v_453_108_Y <= bits(_logic_or_rtl_datapath_v_453_108, 0, 0)
    _logic_or_rtl_datapath_v_453_109_Y <= bits(_logic_or_rtl_datapath_v_453_109, 0, 0)
    _logic_or_rtl_datapath_v_453_116_Y <= bits(_logic_or_rtl_datapath_v_453_116, 0, 0)
    _logic_or_rtl_datapath_v_453_117_Y <= bits(_logic_or_rtl_datapath_v_453_117, 0, 0)
    _logic_or_rtl_datapath_v_453_124_Y <= bits(_logic_or_rtl_datapath_v_453_124, 0, 0)
    _logic_or_rtl_datapath_v_453_125_Y <= bits(_logic_or_rtl_datapath_v_453_125, 0, 0)
    _or_rtl_datapath_v_273_6_Y <= bits(_or_rtl_datapath_v_273_6, 0, 0)
    _or_rtl_datapath_v_273_7_Y <= bits(_or_rtl_datapath_v_273_7, 0, 0)
    _or_rtl_datapath_v_273_8_Y <= bits(_or_rtl_datapath_v_273_8, 0, 0)
    _or_rtl_datapath_v_273_9_Y <= bits(_or_rtl_datapath_v_273_9, 0, 0)
    _or_rtl_datapath_v_402_37_Y <= bits(_or_rtl_datapath_v_402_37, 2, 0)
    _or_rtl_datapath_v_475_47_Y <= bits(_or_rtl_datapath_v_518_55, 0, 0)
    _or_rtl_datapath_v_481_51_Y <= bits(_or_rtl_datapath_v_481_51, 1, 0)
    _procmux_1896_Y <= bits(_procmux_1896, 31, 0)
    _procmux_1901_Y <= bits(_procmux_1901, 31, 0)
    _procmux_1906_Y <= bits(_procmux_1906, 31, 0)
    _procmux_1911_Y <= bits(_procmux_1911, 31, 0)
    _procmux_1916_Y <= bits(_procmux_1916, 31, 0)
    _procmux_1921_Y <= bits(_procmux_1921, 31, 0)
    _procmux_1926_Y <= bits(_procmux_1926, 31, 0)
    _procmux_1931_Y <= bits(_procmux_1931, 31, 0)
    _procmux_1936_Y <= bits(_procmux_1936, 31, 0)
    _procmux_1941_Y <= bits(_procmux_1941, 31, 0)
    _procmux_1946_Y <= bits(_procmux_1946, 31, 0)
    _procmux_1951_Y <= bits(_procmux_1951, 31, 0)
    _procmux_1956_Y <= bits(_procmux_1956, 31, 0)
    _procmux_1961_Y <= bits(_procmux_1961, 31, 0)
    _procmux_1967_Y <= bits(_procmux_1967, 31, 0)
    _procmux_1969_Y <= bits(_procmux_1969, 31, 0)
    _procmux_1974_Y <= bits(_procmux_1974, 31, 0)
    _procmux_1979_Y <= bits(_procmux_1979, 31, 0)
    _procmux_1984_Y <= bits(_procmux_1984, 31, 0)
    _procmux_1989_Y <= bits(_procmux_1989, 31, 0)
    _procmux_1994_Y <= bits(_procmux_1994, 31, 0)
    _procmux_1999_Y <= bits(_procmux_1999, 31, 0)
    _procmux_2004_Y <= bits(_procmux_2004, 31, 0)
    _procmux_2009_Y <= bits(_procmux_2009, 31, 0)
    _procmux_2014_Y <= bits(_procmux_2014, 31, 0)
    _procmux_2055_Y <= bits(_procmux_2055, 3, 0)
    _procmux_2060_Y <= bits(_procmux_2060, 3, 0)
    _procmux_2065_Y <= bits(_procmux_2065, 3, 0)
    _procmux_2072_CMP <= bits(_procmux_2072_CMP0, 0, 0)
    _procmux_2073_CMP <= bits(_procmux_2073_CMP0, 0, 0)
    _procmux_2074_CMP <= bits(_procmux_2074_CMP0, 0, 0)
    _procmux_2076_CMP <= bits(_procmux_2076_CMP0, 0, 0)
    _procmux_2077_CMP <= bits(_procmux_2077_CMP0, 0, 0)
    _procmux_2078_CMP <= bits(_procmux_2078_CMP0, 0, 0)
    _procmux_2079_CMP <= bits(_procmux_2079_CMP0, 0, 0)
    _procmux_2082_CMP <= bits(_procmux_2082_CMP0, 0, 0)
    _procmux_2083_CMP <= bits(_procmux_2083_CMP0, 0, 0)
    _procmux_2084_CMP <= bits(_procmux_2084_CMP0, 0, 0)
    _procmux_2085_CMP <= bits(_procmux_2085_CMP0, 0, 0)
    _procmux_2086_CMP <= bits(_procmux_2086_CMP0, 0, 0)
    _procmux_2089_CMP <= bits(_procmux_2089_CMP0, 0, 0)
    _procmux_2090_CMP <= bits(_procmux_2090_CMP0, 0, 0)
    _procmux_2091_CMP <= bits(_procmux_2091_CMP0, 0, 0)
    _procmux_2093_Y <= bits(_procmux_2093, 31, 0)
    _ternary_rtl_datapath_v_283_15_Y <= bits(_ternary_rtl_datapath_v_283_15, 31, 0)
    _ternary_rtl_datapath_v_290_19_Y <= bits(_ternary_rtl_datapath_v_290_19, 31, 0)
    _ternary_rtl_datapath_v_292_20_Y <= bits(_ternary_rtl_datapath_v_292_20, 31, 0)
    _ternary_rtl_datapath_v_324_83_Y <= bits(_ternary_rtl_datapath_v_324_83, 31, 0)
    _ternary_rtl_datapath_v_327_84_Y <= bits(_ternary_rtl_datapath_v_327_84, 31, 0)
    _ternary_rtl_datapath_v_341_67_Y <= bits(_ternary_rtl_datapath_v_341_67, 31, 0)
    _ternary_rtl_datapath_v_341_68_Y <= bits(_ternary_rtl_datapath_v_341_68, 31, 0)
    _ternary_rtl_datapath_v_341_72_Y <= bits(_ternary_rtl_datapath_v_341_72, 31, 0)
    _ternary_rtl_datapath_v_341_73_Y <= bits(_ternary_rtl_datapath_v_341_73, 31, 0)
    _ternary_rtl_datapath_v_341_77_Y <= bits(_ternary_rtl_datapath_v_341_77, 31, 0)
    _ternary_rtl_datapath_v_341_78_Y <= bits(_ternary_rtl_datapath_v_341_78, 31, 0)
    _ternary_rtl_datapath_v_341_86_Y <= bits(_ternary_rtl_datapath_v_341_86, 31, 0)
    _ternary_rtl_datapath_v_341_87_Y <= bits(_ternary_rtl_datapath_v_341_87, 31, 0)
    _ternary_rtl_datapath_v_359_31_Y <= bits(_ternary_rtl_datapath_v_359_31, 127, 0)
    _ternary_rtl_datapath_v_451_107_Y <= bits(_ternary_rtl_datapath_v_451_107, 31, 0)
    _ternary_rtl_datapath_v_451_115_Y <= bits(_ternary_rtl_datapath_v_451_115, 31, 0)
    _ternary_rtl_datapath_v_451_123_Y <= bits(_ternary_rtl_datapath_v_451_123, 31, 0)
    _ternary_rtl_datapath_v_451_99_Y <= bits(_ternary_rtl_datapath_v_451_99, 31, 0)
    _ternary_rtl_datapath_v_454_102_Y <= bits(_ternary_rtl_datapath_v_454_102, 31, 0)
    _ternary_rtl_datapath_v_454_103_Y <= bits(_ternary_rtl_datapath_v_454_103, 31, 0)
    _ternary_rtl_datapath_v_454_110_Y <= bits(_ternary_rtl_datapath_v_454_110, 31, 0)
    _ternary_rtl_datapath_v_454_111_Y <= bits(_ternary_rtl_datapath_v_454_111, 31, 0)
    _ternary_rtl_datapath_v_454_118_Y <= bits(_ternary_rtl_datapath_v_454_118, 31, 0)
    _ternary_rtl_datapath_v_454_119_Y <= bits(_ternary_rtl_datapath_v_454_119, 31, 0)
    _ternary_rtl_datapath_v_454_126_Y <= bits(_ternary_rtl_datapath_v_454_126, 31, 0)
    _ternary_rtl_datapath_v_454_127_Y <= bits(_ternary_rtl_datapath_v_454_127, 31, 0)
    _ternary_rtl_datapath_v_475_48_Y <= bits(_ternary_rtl_datapath_v_475_48, 1, 0)
    _ternary_rtl_datapath_v_522_58_Y <= bits(_ternary_rtl_datapath_v_522_58, 31, 0)
    _xor_rtl_datapath_v_430_41_Y <= bits(_xor_rtl_datapath_v_430_41, 31, 0)
    IV_BKP_MUX_i <= bits(_16, 31, 0)
    add_rd <= bits(_xor_rtl_datapath_v_516_54, 31, 0)
    add_rd_key_in <= bits(_22, 31, 0)
    add_rk_out <= bits(_ternary_rtl_datapath_v_522_59, 31, 0)
    add_rk_sel <= bits(_ternary_rtl_datapath_v_520_57, 0, 0)
    bkp_0_ <= bits(_procdff_2155, 31, 0)
    bkp_1_ <= bits(_procdff_2152, 31, 0)
    bkp_2_ <= bits(_procdff_2149, 31, 0)
    bkp_3_ <= bits(_procdff_2146, 31, 0)
    bkp_1_0_ <= bits(_procdff_2156, 31, 0)
    bkp_1_1_ <= bits(_procdff_2153, 31, 0)
    bkp_1_2_ <= bits(_procdff_2150, 31, 0)
    bkp_1_3_ <= bits(_procdff_2147, 31, 0)
    bkp_en <= bits(_or_rtl_datapath_v_299_28, 3, 0)
    bkp_mux_out <= bits(_procmux_2098, 31, 0)
    col_0_ <= bits(_procdff_2141, 31, 0)
    col_1_ <= bits(_procdff_2142, 31, 0)
    col_2_ <= bits(_procdff_2143, 31, 0)
    col_3_ <= bits(_procdff_2144, 31, 0)
    col_en <= bits(_or_rtl_datapath_v_368_33, 3, 0)
    col_en_cnt_unit_pp1 <= bits(_procdff_2157, 3, 0)
    col_en_cnt_unit_pp2 <= bits(_procdff_2158, 3, 0)
    col_en_w_bypass <= bits(_ternary_rtl_datapath_v_367_32, 3, 0)
    col_in <= bits(_25, 127, 0)
    col_sel_pp1 <= bits(_procdff_2161, 1, 0)
    col_sel_pp2 <= bits(_procdff_2162, 1, 0)
    col_sel_w_bypass <= bits(_ternary_rtl_datapath_v_351_29, 1, 0)
    data_in <= bits(_procmux_2095, 31, 0)
    enc_dec_sbox <= bits(_or_rtl_datapath_v_472_46, 0, 0)
    end_aes <= bits(_17, 0, 0)
    iv_0_ <= bits(_procdff_2154, 31, 0)
    iv_1_ <= bits(_procdff_2151, 31, 0)
    iv_2_ <= bits(_procdff_2148, 31, 0)
    iv_3_ <= bits(_procdff_2145, 31, 0)
    iv_bkp_mux <= bits(_ternary_rtl_datapath_v_281_12, 31, 0)
    iv_bus <= bits(_18, 31, 0)
    iv_mux_out <= bits(_procmux_2101, 31, 0)
    key1_mux_cnt <= bits(_and_rtl_datapath_v_462_45, 0, 0)
    key_0_ <= bits(_procdff_2134, 31, 0)
    key_1_ <= bits(_procdff_2136, 31, 0)
    key_2_ <= bits(_procdff_2138, 31, 0)
    key_3_ <= bits(_procdff_2140, 31, 0)
    key_bus <= bits(_19, 31, 0)
    key_en_pp1 <= bits(_procdff_2159, 3, 0)
    key_en_sel <= bits(_ternary_rtl_datapath_v_433_43, 3, 0)
    key_host_0_ <= bits(_procdff_2133, 31, 0)
    key_host_1_ <= bits(_procdff_2135, 31, 0)
    key_host_2_ <= bits(_procdff_2137, 31, 0)
    key_host_3_ <= bits(_procdff_2139, 31, 0)
    key_in <= bits(_20, 127, 0)
    key_mux_out <= bits(_23, 31, 0)
    key_mux_sel <= bits(_ternary_rtl_datapath_v_475_49, 1, 0)
    key_out_sel_pp1 <= bits(_procdff_2163, 1, 0)
    key_out_sel_pp2 <= bits(_procdff_2164, 1, 0)
    key_sel_mux <= bits(_ternary_rtl_datapath_v_434_44, 0, 0)
    key_sel_pp1 <= bits(_procdff_2167, 0, 0)
    last_round_pp1 <= bits(_procdff_2170, 0, 0)
    last_round_pp2 <= bits(_procdff_2171, 0, 0)
    rk_out_sel <= bits(_or_rtl_datapath_v_518_56, 0, 0)
    rk_out_sel_pp1 <= bits(_procdff_2168, 0, 0)
    rk_out_sel_pp2 <= bits(_procdff_2169, 0, 0)
    rk_sel_mux <= bits(_ternary_rtl_datapath_v_500_52, 1, 0)
    rk_sel_pp1 <= bits(_procdff_2165, 1, 0)
    rk_sel_pp2 <= bits(_procdff_2166, 1, 0)
    round_pp1 <= bits(_procdff_2160, 3, 0)
    sbox_input <= bits(_24, 31, 0)
    sbox_pp2 <= bits(_procdff_2172, 31, 0)
    sr_input <= bits(_21, 127, 0)
    sr_input_0 <= bits(_ternary_rtl_datapath_v_388_35, 31, 0)
    sr_input_3 <= bits(_ternary_rtl_datapath_v_387_34, 31, 0)
    xor_input_bkp_iv <= bits(_xor_rtl_datapath_v_283_16, 31, 0)
  module aes_core:
    input addr: UInt<2>
    input aes_mode: UInt<2>
    input bus_in: UInt<32>
    input clk: UInt<1>
    output col_out: UInt<32>
    input data_type: UInt<2>
    input disable_core: UInt<1>
    output end_aes: UInt<1>
    input first_block: UInt<1>
    input iv_en: UInt<4>
    output iv_out: UInt<32>
    input iv_sel_rd: UInt<4>
    input key_en: UInt<4>
    output key_out: UInt<32>
    input key_sel_rd: UInt<2>
    input op_mode: UInt<2>
    input read_en: UInt<1>
    input rst_n: UInt<1>
    input start: UInt<1>
    input write_en: UInt<1>

    wire _shl_rtl_aes_core_v_125_335_Y: UInt<4>
    wire bypass_key_en: UInt<1>
    wire bypass_rk: UInt<1>
    wire col_addr_host: UInt<2>
    wire col_en_cnt_unit: UInt<4>
    wire col_en_host: UInt<4>
    wire col_sel: UInt<2>
    wire enc_dec: UInt<1>
    wire end_comp: UInt<1>
    wire iv_cnt_en: UInt<1>
    wire iv_cnt_sel: UInt<1>
    wire iv_en_host: UInt<4>
    wire key_derivation_en: UInt<1>
    wire key_en_cnt_unit: UInt<4>
    wire key_en_host: UInt<4>
    wire key_gen: UInt<1>
    wire key_init: UInt<1>
    wire key_out_sel: UInt<2>
    wire key_sel: UInt<1>
    wire last_round: UInt<1>
    wire mode_cbc: UInt<1>
    wire mode_ctr: UInt<1>
    wire rk_sel: UInt<2>
    wire round: UInt<4>
    wire sbox_sel: UInt<3>
    wire _and_rtl_aes_core_v_125_336: UInt<4>
    wire _and_rtl_aes_core_v_126_337: UInt<2>
    wire _shl_rtl_aes_core_v_125_335: UInt<4>
    wire _36: UInt<4>
    wire _37: UInt<4>
    bypass_key_en is invalid
    bypass_rk is invalid
    col_en_cnt_unit is invalid
    col_out is invalid
    col_sel is invalid
    enc_dec is invalid
    end_aes is invalid
    end_comp is invalid
    iv_cnt_en is invalid
    iv_cnt_sel is invalid
    iv_out is invalid
    key_derivation_en is invalid
    key_en_cnt_unit is invalid
    key_gen is invalid
    key_init is invalid
    key_out is invalid
    key_out_sel is invalid
    key_sel is invalid
    last_round is invalid
    mode_cbc is invalid
    mode_ctr is invalid
    rk_sel is invalid
    round is invalid
    sbox_sel is invalid


    _and_rtl_aes_core_v_125_336 <= and(_shl_rtl_aes_core_v_125_335_Y, asUInt(cat(write_en, cat(write_en, cat(write_en, write_en)))))
    _and_rtl_aes_core_v_126_337 <= and(addr, asUInt(cat(read_en, read_en)))
    _shl_rtl_aes_core_v_125_335 <= bits(dshl(UInt<4>("h1"), asUInt(addr)), 3, 0)
    _36 <= iv_en
    _37 <= key_en

    inst AES_CORE_CONTROL_UNIT of control_unit
    AES_CORE_CONTROL_UNIT.aes_mode <= aes_mode
    bypass_key_en <= AES_CORE_CONTROL_UNIT.bypass_key_en
    bypass_rk <= AES_CORE_CONTROL_UNIT.bypass_rk
    AES_CORE_CONTROL_UNIT.clk <= clk
    col_en_cnt_unit <= AES_CORE_CONTROL_UNIT.col_en
    col_sel <= AES_CORE_CONTROL_UNIT.col_sel
    AES_CORE_CONTROL_UNIT.disable_core <= disable_core
    enc_dec <= AES_CORE_CONTROL_UNIT.encrypt_decrypt
    end_comp <= AES_CORE_CONTROL_UNIT.end_comp
    iv_cnt_en <= AES_CORE_CONTROL_UNIT.iv_cnt_en
    iv_cnt_sel <= AES_CORE_CONTROL_UNIT.iv_cnt_sel
    key_derivation_en <= AES_CORE_CONTROL_UNIT.key_derivation_en
    key_en_cnt_unit <= AES_CORE_CONTROL_UNIT.key_en
    key_gen <= AES_CORE_CONTROL_UNIT.key_gen
    key_init <= AES_CORE_CONTROL_UNIT.key_init
    key_out_sel <= AES_CORE_CONTROL_UNIT.key_out_sel
    key_sel <= AES_CORE_CONTROL_UNIT.key_sel
    last_round <= AES_CORE_CONTROL_UNIT.last_round
    mode_cbc <= AES_CORE_CONTROL_UNIT.mode_cbc
    mode_ctr <= AES_CORE_CONTROL_UNIT.mode_ctr
    AES_CORE_CONTROL_UNIT.operation_mode <= op_mode
    rk_sel <= AES_CORE_CONTROL_UNIT.rk_sel
    round <= AES_CORE_CONTROL_UNIT.round
    AES_CORE_CONTROL_UNIT.rst_n <= rst_n
    sbox_sel <= AES_CORE_CONTROL_UNIT.sbox_sel
    AES_CORE_CONTROL_UNIT.start <= start
    inst AES_CORE_DATAPATH of datapath
    AES_CORE_DATAPATH.bus_in <= bus_in
    AES_CORE_DATAPATH.bypass_key_en <= bypass_key_en
    AES_CORE_DATAPATH.bypass_rk <= bypass_rk
    AES_CORE_DATAPATH.clk <= clk
    col_out <= AES_CORE_DATAPATH.col_bus
    AES_CORE_DATAPATH.col_en_cnt_unit <= col_en_cnt_unit
    AES_CORE_DATAPATH.col_en_host <= col_en_host
    AES_CORE_DATAPATH.col_sel <= col_sel
    AES_CORE_DATAPATH.col_sel_host <= col_addr_host
    AES_CORE_DATAPATH.data_type <= data_type
    AES_CORE_DATAPATH.enc_dec <= enc_dec
    end_aes <= AES_CORE_DATAPATH.end_aes
    AES_CORE_DATAPATH.end_comp <= end_comp
    AES_CORE_DATAPATH.first_block <= first_block
    iv_out <= AES_CORE_DATAPATH.iv_bus
    AES_CORE_DATAPATH.iv_cnt_en <= iv_cnt_en
    AES_CORE_DATAPATH.iv_cnt_sel <= iv_cnt_sel
    AES_CORE_DATAPATH.iv_en <= iv_en
    AES_CORE_DATAPATH.iv_sel_rd <= iv_sel_rd
    key_out <= AES_CORE_DATAPATH.key_bus
    AES_CORE_DATAPATH.key_derivation_en <= key_derivation_en
    AES_CORE_DATAPATH.key_en <= key_en_cnt_unit
    AES_CORE_DATAPATH.key_gen <= key_gen
    AES_CORE_DATAPATH.key_host_en <= key_en
    AES_CORE_DATAPATH.key_init <= key_init
    AES_CORE_DATAPATH.key_out_sel <= key_out_sel
    AES_CORE_DATAPATH.key_sel <= key_sel
    AES_CORE_DATAPATH.key_sel_rd <= key_sel_rd
    AES_CORE_DATAPATH.last_round <= last_round
    AES_CORE_DATAPATH.mode_cbc <= mode_cbc
    AES_CORE_DATAPATH.mode_ctr <= mode_ctr
    AES_CORE_DATAPATH.rk_sel <= rk_sel
    AES_CORE_DATAPATH.round <= round
    AES_CORE_DATAPATH.rst_n <= rst_n
    AES_CORE_DATAPATH.sbox_sel <= sbox_sel
    _shl_rtl_aes_core_v_125_335_Y <= bits(_shl_rtl_aes_core_v_125_335, 3, 0)
    col_addr_host <= bits(_and_rtl_aes_core_v_126_337, 1, 0)
    col_en_host <= bits(_and_rtl_aes_core_v_125_336, 3, 0)
    iv_en_host <= bits(_36, 3, 0)
    key_en_host <= bits(_37, 3, 0)
  module key_expander:
    input add_w_out: UInt<1>
    input enc_dec: UInt<1>
    output g_in: UInt<32>
    input g_out: UInt<32>
    input key_in: UInt<128>
    output key_out: UInt<128>
    input round: UInt<4>

    wire _20_rc_dir_7_0_: UInt<8>
    wire _20_rc_inv_7_0_: UInt<8>
    wire _eq_rtl_key_expander_v_158_466_Y: UInt<1>
    wire _eq_rtl_key_expander_v_161_467_Y: UInt<1>
    wire _eq_rtl_key_expander_v_171_497_Y: UInt<1>
    wire _eq_rtl_key_expander_v_174_498_Y: UInt<1>
    wire _shl_rtl_key_expander_v_164_468_Y: UInt<8>
    wire _shr_rtl_key_expander_v_177_500_Y: UInt<8>
    wire _sub_rtl_key_expander_v_177_499_Y: UInt<32>
    wire _xor_rtl_key_expander_v_122_538_Y: UInt<32>
    wire _xor_rtl_key_expander_v_122_539_Y: UInt<32>
    wire _xor_rtl_key_expander_v_135_569_Y: UInt<8>
    wire _xor_rtl_key_expander_v_135_571_Y: UInt<8>
    wire _xor_rtl_key_expander_v_135_573_Y: UInt<8>
    wire _xor_rtl_key_expander_v_135_575_Y: UInt<8>
    wire RC_DIR_i: UInt<32>
    wire RC_INV_i: UInt<32>
    wire g_func: UInt<32>
    wire key_0_: UInt<32>
    wire key_1_: UInt<32>
    wire key_2_: UInt<32>
    wire key_3_: UInt<32>
    wire rc: UInt<8>
    wire rc_dir: UInt<8>
    wire rc_inv: UInt<8>
    wire rot_in_0_: UInt<8>
    wire rot_in_1_: UInt<8>
    wire rot_in_2_: UInt<8>
    wire rot_in_3_: UInt<8>
    wire _eq_rtl_key_expander_v_158_493: UInt<1>
    wire _eq_rtl_key_expander_v_161_494: UInt<1>
    wire _eq_rtl_key_expander_v_171_533: UInt<1>
    wire _eq_rtl_key_expander_v_174_534: UInt<1>
    wire _procmux_1057: UInt<8>
    wire _procmux_1063: UInt<8>
    wire _procmux_967: UInt<8>
    wire _procmux_973: UInt<8>
    wire _shl_rtl_key_expander_v_164_495: UInt<8>
    wire _shr_rtl_key_expander_v_177_536: UInt<8>
    wire _sub_rtl_key_expander_v_177_535: UInt<32>
    wire _ternary_rtl_key_expander_v_122_541: UInt<32>
    wire _ternary_rtl_key_expander_v_135_570: UInt<8>
    wire _ternary_rtl_key_expander_v_135_572: UInt<8>
    wire _ternary_rtl_key_expander_v_135_574: UInt<8>
    wire _ternary_rtl_key_expander_v_135_576: UInt<8>
    wire _ternary_rtl_key_expander_v_152_464: UInt<8>
    wire _xor_rtl_key_expander_v_119_537: UInt<32>
    wire _xor_rtl_key_expander_v_122_539: UInt<32>
    wire _xor_rtl_key_expander_v_122_540: UInt<32>
    wire _xor_rtl_key_expander_v_124_542: UInt<32>
    wire _xor_rtl_key_expander_v_124_543: UInt<32>
    wire _xor_rtl_key_expander_v_135_569: UInt<8>
    wire _xor_rtl_key_expander_v_135_571: UInt<8>
    wire _xor_rtl_key_expander_v_135_573: UInt<8>
    wire _xor_rtl_key_expander_v_135_575: UInt<8>
    wire _xor_rtl_key_expander_v_150_463: UInt<8>
    wire _62: UInt<32>
    wire _63: UInt<32>
    wire _64: UInt<24>
    wire _65: UInt<32>
    wire _66: UInt<32>
    wire _67: UInt<32>
    wire _68: UInt<32>
    wire _69: UInt<32>


    _eq_rtl_key_expander_v_158_493 <= eq(round, asUInt(UInt<4>("h8")))
    _eq_rtl_key_expander_v_161_494 <= eq(round, asUInt(UInt<4>("h9")))
    _eq_rtl_key_expander_v_171_533 <= eq(round, asUInt(UInt<4>("h1")))
    _eq_rtl_key_expander_v_174_534 <= eq(round, UInt(0))
    _procmux_1057 <= mux(_eq_rtl_key_expander_v_161_467_Y, UInt<8>("h36"), _shl_rtl_key_expander_v_164_468_Y)
    _procmux_1063 <= mux(_eq_rtl_key_expander_v_158_466_Y, UInt<8>("h1b"), _20_rc_dir_7_0_)
    _procmux_967 <= mux(_eq_rtl_key_expander_v_174_498_Y, UInt<8>("h36"), _shr_rtl_key_expander_v_177_500_Y)
    _procmux_973 <= mux(_eq_rtl_key_expander_v_171_497_Y, UInt<8>("h1b"), _20_rc_inv_7_0_)
    _shl_rtl_key_expander_v_164_495 <= bits(dshl(UInt<8>("h01"), asUInt(round)), 7, 0)
    _shr_rtl_key_expander_v_177_536 <= dshr(UInt<8>("h80"), asUInt(_sub_rtl_key_expander_v_177_499_Y))
    _sub_rtl_key_expander_v_177_535 <= asUInt(sub(round, asUInt(UInt<32>("h00000002"))))
    _ternary_rtl_key_expander_v_122_541 <= mux(add_w_out, _xor_rtl_key_expander_v_122_539_Y, _xor_rtl_key_expander_v_122_538_Y)
    _ternary_rtl_key_expander_v_135_570 <= mux(enc_dec, bits(key_in, 7, 0), _xor_rtl_key_expander_v_135_569_Y)
    _ternary_rtl_key_expander_v_135_572 <= mux(enc_dec, bits(key_in, 15, 8), _xor_rtl_key_expander_v_135_571_Y)
    _ternary_rtl_key_expander_v_135_574 <= mux(enc_dec, bits(key_in, 23, 16), _xor_rtl_key_expander_v_135_573_Y)
    _ternary_rtl_key_expander_v_135_576 <= mux(enc_dec, bits(key_in, 31, 24), _xor_rtl_key_expander_v_135_575_Y)
    _ternary_rtl_key_expander_v_152_464 <= mux(enc_dec, rc_dir, rc_inv)
    _xor_rtl_key_expander_v_119_537 <= xor(bits(key_in, 127, 96), asUInt(cat(bits(g_func, 31, 24), bits(g_out, 23, 0))))
    _xor_rtl_key_expander_v_122_539 <= xor(_xor_rtl_key_expander_v_122_538_Y, asUInt(cat(bits(g_func, 31, 24), bits(g_out, 23, 0))))
    _xor_rtl_key_expander_v_122_540 <= xor(bits(key_in, 95, 64), asUInt(bits(key_in, 127, 96)))
    _xor_rtl_key_expander_v_124_542 <= xor(bits(key_in, 63, 32), asUInt(bits(key_in, 95, 64)))
    _xor_rtl_key_expander_v_124_543 <= xor(bits(key_in, 31, 0), asUInt(bits(key_in, 63, 32)))
    _xor_rtl_key_expander_v_135_569 <= xor(bits(key_in, 7, 0), asUInt(bits(key_in, 39, 32)))
    _xor_rtl_key_expander_v_135_571 <= xor(bits(key_in, 15, 8), asUInt(bits(key_in, 47, 40)))
    _xor_rtl_key_expander_v_135_573 <= xor(bits(key_in, 23, 16), asUInt(bits(key_in, 55, 48)))
    _xor_rtl_key_expander_v_135_575 <= xor(bits(key_in, 31, 24), asUInt(bits(key_in, 63, 56)))
    _xor_rtl_key_expander_v_150_463 <= xor(bits(g_out, 31, 24), asUInt(rc))
    _62 <= UInt<32>("h0000000a")
    _63 <= UInt<32>("h0000000a")
    _64 <= bits(g_out, 23, 0)
    _65 <= cat(rot_in_2_, cat(rot_in_1_, cat(rot_in_0_, rot_in_3_)))
    _66 <= bits(key_in, 127, 96)
    _67 <= bits(key_in, 95, 64)
    _68 <= bits(key_in, 63, 32)
    _69 <= bits(key_in, 31, 0)

    _20_rc_dir_7_0_ <= bits(_procmux_1057, 7, 0)
    _20_rc_inv_7_0_ <= bits(_procmux_967, 7, 0)
    _eq_rtl_key_expander_v_158_466_Y <= bits(_eq_rtl_key_expander_v_158_493, 0, 0)
    _eq_rtl_key_expander_v_161_467_Y <= bits(_eq_rtl_key_expander_v_161_494, 0, 0)
    _eq_rtl_key_expander_v_171_497_Y <= bits(_eq_rtl_key_expander_v_171_533, 0, 0)
    _eq_rtl_key_expander_v_174_498_Y <= bits(_eq_rtl_key_expander_v_174_534, 0, 0)
    _shl_rtl_key_expander_v_164_468_Y <= bits(_shl_rtl_key_expander_v_164_495, 7, 0)
    _shr_rtl_key_expander_v_177_500_Y <= bits(_shr_rtl_key_expander_v_177_536, 7, 0)
    _sub_rtl_key_expander_v_177_499_Y <= bits(_sub_rtl_key_expander_v_177_535, 31, 0)
    _xor_rtl_key_expander_v_122_538_Y <= bits(_xor_rtl_key_expander_v_122_540, 31, 0)
    _xor_rtl_key_expander_v_122_539_Y <= bits(_xor_rtl_key_expander_v_122_539, 31, 0)
    _xor_rtl_key_expander_v_135_569_Y <= bits(_xor_rtl_key_expander_v_135_569, 7, 0)
    _xor_rtl_key_expander_v_135_571_Y <= bits(_xor_rtl_key_expander_v_135_571, 7, 0)
    _xor_rtl_key_expander_v_135_573_Y <= bits(_xor_rtl_key_expander_v_135_573, 7, 0)
    _xor_rtl_key_expander_v_135_575_Y <= bits(_xor_rtl_key_expander_v_135_575, 7, 0)
    RC_DIR_i <= bits(_62, 31, 0)
    RC_INV_i <= bits(_63, 31, 0)
    g_func <= cat(bits(_xor_rtl_key_expander_v_150_463, 7, 0), bits(_64, 23, 0))
    g_in <= bits(_65, 31, 0)
    key_0_ <= bits(_66, 31, 0)
    key_1_ <= bits(_67, 31, 0)
    key_2_ <= bits(_68, 31, 0)
    key_3_ <= bits(_69, 31, 0)
    key_out <= cat(bits(_xor_rtl_key_expander_v_119_537, 31, 0), cat(bits(_ternary_rtl_key_expander_v_122_541, 31, 0), cat(bits(_xor_rtl_key_expander_v_124_542, 31, 0), bits(_xor_rtl_key_expander_v_124_543, 31, 0))))
    rc <= bits(_ternary_rtl_key_expander_v_152_464, 7, 0)
    rc_dir <= bits(_procmux_1063, 7, 0)
    rc_inv <= bits(_procmux_973, 7, 0)
    rot_in_0_ <= bits(_ternary_rtl_key_expander_v_135_570, 7, 0)
    rot_in_1_ <= bits(_ternary_rtl_key_expander_v_135_572, 7, 0)
    rot_in_2_ <= bits(_ternary_rtl_key_expander_v_135_574, 7, 0)
    rot_in_3_ <= bits(_ternary_rtl_key_expander_v_135_576, 7, 0)
  module mix_columns:
    input mix_in: UInt<32>
    output mix_out_dec: UInt<32>
    output mix_out_enc: UInt<32>

    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_245__aes_mult_02_7_0__265: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_246__aes_mult_02_7_0__272: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_247__aes_mult_02_7_0__281: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_248__aes_mult_02_7_0__290: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292: UInt<8>
    wire _0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321: UInt<8>
    wire _0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301: UInt<8>
    wire _0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311: UInt<8>
    wire _and_rtl_mix_columns_v_109_304_Y: UInt<8>
    wire _and_rtl_mix_columns_v_109_306_Y: UInt<8>
    wire _and_rtl_mix_columns_v_109_314_Y: UInt<8>
    wire _and_rtl_mix_columns_v_109_316_Y: UInt<8>
    wire _and_rtl_mix_columns_v_99_268_Y: UInt<8>
    wire _and_rtl_mix_columns_v_99_277_Y: UInt<8>
    wire _and_rtl_mix_columns_v_99_286_Y: UInt<8>
    wire _and_rtl_mix_columns_v_99_295_Y: UInt<8>
    wire _and_rtl_mix_columns_v_99_324_Y: UInt<8>
    wire _xor_rtl_mix_columns_v_109_305_Y: UInt<8>
    wire _xor_rtl_mix_columns_v_109_315_Y: UInt<8>
    wire _xor_rtl_mix_columns_v_142_259_Y: UInt<8>
    wire _xor_rtl_mix_columns_v_142_260_Y: UInt<8>
    wire col_0_: UInt<8>
    wire col_1_: UInt<8>
    wire col_2_: UInt<8>
    wire col_3_: UInt<8>
    wire sum_p_0_: UInt<8>
    wire sum_p_1_: UInt<8>
    wire sum_p_2_: UInt<8>
    wire sum_p_3_: UInt<8>
    wire y_0_: UInt<8>
    wire y_1_: UInt<8>
    wire y_2_: UInt<8>
    wire _and_rtl_mix_columns_v_109_304: UInt<8>
    wire _and_rtl_mix_columns_v_109_306: UInt<8>
    wire _and_rtl_mix_columns_v_109_314: UInt<8>
    wire _and_rtl_mix_columns_v_109_316: UInt<8>
    wire _and_rtl_mix_columns_v_99_268: UInt<8>
    wire _and_rtl_mix_columns_v_99_277: UInt<8>
    wire _and_rtl_mix_columns_v_99_286: UInt<8>
    wire _and_rtl_mix_columns_v_99_295: UInt<8>
    wire _and_rtl_mix_columns_v_99_324: UInt<8>
    wire _xor_rtl_mix_columns_v_109_305: UInt<8>
    wire _xor_rtl_mix_columns_v_109_307: UInt<8>
    wire _xor_rtl_mix_columns_v_109_315: UInt<8>
    wire _xor_rtl_mix_columns_v_109_317: UInt<8>
    wire _xor_rtl_mix_columns_v_131_327: UInt<8>
    wire _xor_rtl_mix_columns_v_131_328: UInt<8>
    wire _xor_rtl_mix_columns_v_131_330: UInt<8>
    wire _xor_rtl_mix_columns_v_131_331: UInt<8>
    wire _xor_rtl_mix_columns_v_131_332: UInt<8>
    wire _xor_rtl_mix_columns_v_131_333: UInt<8>
    wire _xor_rtl_mix_columns_v_131_334: UInt<8>
    wire _xor_rtl_mix_columns_v_132_270: UInt<8>
    wire _xor_rtl_mix_columns_v_132_279: UInt<8>
    wire _xor_rtl_mix_columns_v_132_288: UInt<8>
    wire _xor_rtl_mix_columns_v_132_293: UInt<8>
    wire _xor_rtl_mix_columns_v_132_297: UInt<8>
    wire _xor_rtl_mix_columns_v_139_302: UInt<8>
    wire _xor_rtl_mix_columns_v_140_312: UInt<8>
    wire _xor_rtl_mix_columns_v_141_322: UInt<8>
    wire _xor_rtl_mix_columns_v_142_259: UInt<8>
    wire _xor_rtl_mix_columns_v_142_260: UInt<8>
    wire _xor_rtl_mix_columns_v_142_261: UInt<32>
    wire _xor_rtl_mix_columns_v_99_269: UInt<8>
    wire _xor_rtl_mix_columns_v_99_278: UInt<8>
    wire _xor_rtl_mix_columns_v_99_287: UInt<8>
    wire _xor_rtl_mix_columns_v_99_296: UInt<8>
    wire _xor_rtl_mix_columns_v_99_325: UInt<8>
    wire _70: UInt<8>
    wire _71: UInt<8>
    wire _72: UInt<8>
    wire _73: UInt<8>


    _and_rtl_mix_columns_v_109_304 <= and(cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6), bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 6, 6)))))))), asUInt(UInt<8>("h1b")))
    _and_rtl_mix_columns_v_109_306 <= and(cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7), bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 7, 7)))))))), asUInt(UInt<8>("h36")))
    _and_rtl_mix_columns_v_109_314 <= and(cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6), bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 6, 6)))))))), asUInt(UInt<8>("h1b")))
    _and_rtl_mix_columns_v_109_316 <= and(cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7), bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 7, 7)))))))), asUInt(UInt<8>("h36")))
    _and_rtl_mix_columns_v_99_268 <= and(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7), bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 7, 7)))))))), asUInt(UInt<8>("h1b")))
    _and_rtl_mix_columns_v_99_277 <= and(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7), bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 7, 7)))))))), asUInt(UInt<8>("h1b")))
    _and_rtl_mix_columns_v_99_286 <= and(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7), bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 7, 7)))))))), asUInt(UInt<8>("h1b")))
    _and_rtl_mix_columns_v_99_295 <= and(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7), bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 7, 7)))))))), asUInt(UInt<8>("h1b")))
    _and_rtl_mix_columns_v_99_324 <= and(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7), bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 7, 7)))))))), asUInt(UInt<8>("h1b")))
    _xor_rtl_mix_columns_v_109_305 <= xor(cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301, 5, 0), UInt<2>("h0")), asUInt(_and_rtl_mix_columns_v_109_304_Y))
    _xor_rtl_mix_columns_v_109_307 <= xor(_xor_rtl_mix_columns_v_109_305_Y, asUInt(_and_rtl_mix_columns_v_109_306_Y))
    _xor_rtl_mix_columns_v_109_315 <= xor(cat(bits(_0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311, 5, 0), UInt<2>("h0")), asUInt(_and_rtl_mix_columns_v_109_314_Y))
    _xor_rtl_mix_columns_v_109_317 <= xor(_xor_rtl_mix_columns_v_109_315_Y, asUInt(_and_rtl_mix_columns_v_109_316_Y))
    _xor_rtl_mix_columns_v_131_327 <= xor(bits(mix_in, 15, 8), asUInt(bits(mix_in, 23, 16)))
    _xor_rtl_mix_columns_v_131_328 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, asUInt(bits(mix_in, 31, 24)))
    _xor_rtl_mix_columns_v_131_330 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, asUInt(bits(mix_in, 7, 0)))
    _xor_rtl_mix_columns_v_131_331 <= xor(bits(mix_in, 31, 24), asUInt(bits(mix_in, 7, 0)))
    _xor_rtl_mix_columns_v_131_332 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, asUInt(bits(mix_in, 15, 8)))
    _xor_rtl_mix_columns_v_131_333 <= xor(bits(mix_in, 7, 0), asUInt(bits(mix_in, 15, 8)))
    _xor_rtl_mix_columns_v_131_334 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, asUInt(bits(mix_in, 23, 16)))
    _xor_rtl_mix_columns_v_132_270 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_245__aes_mult_02_7_0__265, asUInt(sum_p_0_))
    _xor_rtl_mix_columns_v_132_279 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_246__aes_mult_02_7_0__272, asUInt(sum_p_1_))
    _xor_rtl_mix_columns_v_132_288 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_247__aes_mult_02_7_0__281, asUInt(sum_p_2_))
    _xor_rtl_mix_columns_v_132_293 <= xor(bits(mix_in, 31, 24), asUInt(bits(mix_in, 23, 16)))
    _xor_rtl_mix_columns_v_132_297 <= xor(_0_func__aes_mult_02_rtl_mix_columns_v_132_248__aes_mult_02_7_0__290, asUInt(sum_p_3_))
    _xor_rtl_mix_columns_v_139_302 <= xor(bits(mix_in, 23, 16), asUInt(bits(mix_in, 7, 0)))
    _xor_rtl_mix_columns_v_140_312 <= xor(bits(mix_in, 31, 24), asUInt(bits(mix_in, 15, 8)))
    _xor_rtl_mix_columns_v_141_322 <= xor(y_1_, asUInt(y_0_))
    _xor_rtl_mix_columns_v_142_259 <= xor(y_2_, asUInt(y_0_))
    _xor_rtl_mix_columns_v_142_260 <= xor(y_2_, asUInt(y_1_))
    _xor_rtl_mix_columns_v_142_261 <= xor(mix_out_enc, asUInt(cat(_xor_rtl_mix_columns_v_142_260_Y, cat(_xor_rtl_mix_columns_v_142_259_Y, cat(_xor_rtl_mix_columns_v_142_260_Y, _xor_rtl_mix_columns_v_142_259_Y)))))
    _xor_rtl_mix_columns_v_99_269 <= xor(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264, 6, 0), UInt<1>("h0")), asUInt(_and_rtl_mix_columns_v_99_268_Y))
    _xor_rtl_mix_columns_v_99_278 <= xor(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274, 6, 0), UInt<1>("h0")), asUInt(_and_rtl_mix_columns_v_99_277_Y))
    _xor_rtl_mix_columns_v_99_287 <= xor(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283, 6, 0), UInt<1>("h0")), asUInt(_and_rtl_mix_columns_v_99_286_Y))
    _xor_rtl_mix_columns_v_99_296 <= xor(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292, 6, 0), UInt<1>("h0")), asUInt(_and_rtl_mix_columns_v_99_295_Y))
    _xor_rtl_mix_columns_v_99_325 <= xor(cat(bits(_0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321, 6, 0), UInt<1>("h0")), asUInt(_and_rtl_mix_columns_v_99_324_Y))
    _70 <= bits(mix_in, 7, 0)
    _71 <= bits(mix_in, 15, 8)
    _72 <= bits(mix_in, 23, 16)
    _73 <= bits(mix_in, 31, 24)

    _0_func__aes_mult_02_rtl_mix_columns_v_132_245__aes_mult_02_7_0__265 <= bits(_xor_rtl_mix_columns_v_99_269, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_246__aes_mult_02_7_0__272 <= bits(_xor_rtl_mix_columns_v_99_278, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_247__aes_mult_02_7_0__281 <= bits(_xor_rtl_mix_columns_v_99_287, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_248__aes_mult_02_7_0__290 <= bits(_xor_rtl_mix_columns_v_99_296, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_252__data_in_7_0__264 <= bits(_xor_rtl_mix_columns_v_131_331, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_253__data_in_7_0__274 <= bits(_xor_rtl_mix_columns_v_131_333, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_254__data_in_7_0__283 <= bits(_xor_rtl_mix_columns_v_131_327, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_132_255__data_in_7_0__292 <= bits(_xor_rtl_mix_columns_v_132_293, 7, 0)
    _0_func__aes_mult_02_rtl_mix_columns_v_141_258__data_in_7_0__321 <= bits(_xor_rtl_mix_columns_v_141_322, 7, 0)
    _0_func__aes_mult_04_rtl_mix_columns_v_139_256__data_in_7_0__301 <= bits(_xor_rtl_mix_columns_v_139_302, 7, 0)
    _0_func__aes_mult_04_rtl_mix_columns_v_140_257__data_in_7_0__311 <= bits(_xor_rtl_mix_columns_v_140_312, 7, 0)
    _and_rtl_mix_columns_v_109_304_Y <= bits(_and_rtl_mix_columns_v_109_304, 7, 0)
    _and_rtl_mix_columns_v_109_306_Y <= bits(_and_rtl_mix_columns_v_109_306, 7, 0)
    _and_rtl_mix_columns_v_109_314_Y <= bits(_and_rtl_mix_columns_v_109_314, 7, 0)
    _and_rtl_mix_columns_v_109_316_Y <= bits(_and_rtl_mix_columns_v_109_316, 7, 0)
    _and_rtl_mix_columns_v_99_268_Y <= bits(_and_rtl_mix_columns_v_99_268, 7, 0)
    _and_rtl_mix_columns_v_99_277_Y <= bits(_and_rtl_mix_columns_v_99_277, 7, 0)
    _and_rtl_mix_columns_v_99_286_Y <= bits(_and_rtl_mix_columns_v_99_286, 7, 0)
    _and_rtl_mix_columns_v_99_295_Y <= bits(_and_rtl_mix_columns_v_99_295, 7, 0)
    _and_rtl_mix_columns_v_99_324_Y <= bits(_and_rtl_mix_columns_v_99_324, 7, 0)
    _xor_rtl_mix_columns_v_109_305_Y <= bits(_xor_rtl_mix_columns_v_109_305, 7, 0)
    _xor_rtl_mix_columns_v_109_315_Y <= bits(_xor_rtl_mix_columns_v_109_315, 7, 0)
    _xor_rtl_mix_columns_v_142_259_Y <= bits(_xor_rtl_mix_columns_v_142_259, 7, 0)
    _xor_rtl_mix_columns_v_142_260_Y <= bits(_xor_rtl_mix_columns_v_142_260, 7, 0)
    col_0_ <= bits(_70, 7, 0)
    col_1_ <= bits(_71, 7, 0)
    col_2_ <= bits(_72, 7, 0)
    col_3_ <= bits(_73, 7, 0)
    mix_out_dec <= bits(_xor_rtl_mix_columns_v_142_261, 31, 0)
    mix_out_enc <= cat(bits(_xor_rtl_mix_columns_v_132_297, 7, 0), cat(bits(_xor_rtl_mix_columns_v_132_288, 7, 0), cat(bits(_xor_rtl_mix_columns_v_132_279, 7, 0), bits(_xor_rtl_mix_columns_v_132_270, 7, 0))))
    sum_p_0_ <= bits(_xor_rtl_mix_columns_v_131_328, 7, 0)
    sum_p_1_ <= bits(_xor_rtl_mix_columns_v_131_330, 7, 0)
    sum_p_2_ <= bits(_xor_rtl_mix_columns_v_131_332, 7, 0)
    sum_p_3_ <= bits(_xor_rtl_mix_columns_v_131_334, 7, 0)
    y_0_ <= bits(_xor_rtl_mix_columns_v_109_307, 7, 0)
    y_1_ <= bits(_xor_rtl_mix_columns_v_109_317, 7, 0)
    y_2_ <= bits(_xor_rtl_mix_columns_v_99_325, 7, 0)
  module sBox:
    input clk: UInt<1>
    input enc_dec: UInt<1>
    input sbox_in: UInt<32>
    output sbox_out_dec: UInt<32>
    output sbox_out_enc: UInt<32>




    inst SBOX_0_ of sBox_8
    SBOX_0_.clk <= clk
    SBOX_0_.enc_dec <= enc_dec
    SBOX_0_.sbox_in <= bits(sbox_in, 7, 0)
    inst SBOX_1_ of sBox_8
    SBOX_1_.clk <= clk
    SBOX_1_.enc_dec <= enc_dec
    SBOX_1_.sbox_in <= bits(sbox_in, 15, 8)
    inst SBOX_2_ of sBox_8
    SBOX_2_.clk <= clk
    SBOX_2_.enc_dec <= enc_dec
    SBOX_2_.sbox_in <= bits(sbox_in, 23, 16)
    inst SBOX_3_ of sBox_8
    SBOX_3_.clk <= clk
    SBOX_3_.enc_dec <= enc_dec
    SBOX_3_.sbox_in <= bits(sbox_in, 31, 24)
    sbox_out_dec <= cat(bits(SBOX_3_.sbox_out_dec, 7, 0), cat(bits(SBOX_2_.sbox_out_dec, 7, 0), cat(bits(SBOX_1_.sbox_out_dec, 7, 0), bits(SBOX_0_.sbox_out_dec, 7, 0))))
    sbox_out_enc <= cat(bits(SBOX_3_.sbox_out_enc, 7, 0), cat(bits(SBOX_2_.sbox_out_enc, 7, 0), cat(bits(SBOX_1_.sbox_out_enc, 7, 0), bits(SBOX_0_.sbox_out_enc, 7, 0))))
  module sBox_8:
    input clk: UInt<1>
    input enc_dec: UInt<1>
    input sbox_in: UInt<8>
    output sbox_out_dec: UInt<8>
    output sbox_out_enc: UInt<8>

    wire _0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717: UInt<4>
    wire _0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724: UInt<2>
    wire _0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_hg_0_0__725: UInt<1>
    wire _0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_lw_0_0__726: UInt<1>
    wire _0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c1_0_0__652: UInt<1>
    wire _0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c2_0_0__653: UInt<1>
    wire _0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c3_0_0__654: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_154_587__in3_0_0__732: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_202_590__gf_muls_2_1_0__751: UInt<2>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_202_590__in3_0_0__754: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_202_590__in4_0_0__755: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_202_594__gf_muls_2_1_0__780: UInt<2>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_202_594__in4_0_0__784: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_203_591__gf_muls_2_1_0__756: UInt<2>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_203_591__in3_0_0__759: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_203_591__in4_0_0__760: UInt<1>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_203_595__gf_muls_2_1_0__785: UInt<2>
    wire _0_func__gf_muls_2_rtl_sBox_8_v_203_595__in4_0_0__789: UInt<1>
    wire _0_func__gf_muls_4_rtl_sBox_8_v_248_589__out_gf_mul_scl_1_1_0__750: UInt<2>
    wire _0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in1_hl_1_0__746: UInt<2>
    wire _0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in2_hl_1_0__747: UInt<2>
    wire _0_func__gf_muls_4_rtl_sBox_8_v_249_593__out_gf_mul_scl_1_1_0__779: UInt<2>
    wire _0_func__gf_muls_4_rtl_sBox_8_v_249_593__xor_in2_hl_1_0__776: UInt<2>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in3_0_0__764: UInt<1>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in4_0_0__765: UInt<1>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in1_in2_1_0__766: UInt<2>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in3_in4_0_0__767: UInt<1>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__in4_0_0__794: UInt<1>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in1_in2_1_0__795: UInt<2>
    wire _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in3_in4_0_0__796: UInt<1>
    wire _0_func__isomorphism_rtl_sBox_8_v_313_582__r1_0_0__608: UInt<1>
    wire _0_func__isomorphism_rtl_sBox_8_v_313_582__r3_0_0__610: UInt<1>
    wire _0_func__isomorphism_rtl_sBox_8_v_313_582__r6_0_0__613: UInt<1>
    wire _0_func__isomorphism_rtl_sBox_8_v_313_582__r8_0_0__615: UInt<1>
    wire _0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874: UInt<8>
    wire _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r10_0_0__887: UInt<1>
    wire _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r2_0_0__879: UInt<1>
    wire _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r6_0_0__883: UInt<1>
    wire _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r8_0_0__885: UInt<1>
    wire _0_func__isomorphism_inv_rtl_sBox_8_v_327_581__isomorphism_inv_7_0__917: UInt<8>
    wire _and_rtl_sBox_8_v_121_810_Y: UInt<2>
    wire _and_rtl_sBox_8_v_121_812_Y: UInt<1>
    wire _and_rtl_sBox_8_v_121_816_Y: UInt<2>
    wire _and_rtl_sBox_8_v_121_818_Y: UInt<1>
    wire _and_rtl_sBox_8_v_121_825_Y: UInt<2>
    wire _and_rtl_sBox_8_v_121_827_Y: UInt<1>
    wire _and_rtl_sBox_8_v_121_832_Y: UInt<2>
    wire _and_rtl_sBox_8_v_121_834_Y: UInt<1>
    wire _and_rtl_sBox_8_v_121_851_Y: UInt<2>
    wire _and_rtl_sBox_8_v_121_853_Y: UInt<1>
    wire _and_rtl_sBox_8_v_121_858_Y: UInt<2>
    wire _and_rtl_sBox_8_v_121_860_Y: UInt<1>
    wire _and_rtl_sBox_8_v_131_839_Y: UInt<2>
    wire _and_rtl_sBox_8_v_131_865_Y: UInt<2>
    wire _and_rtl_sBox_8_v_132_841_Y: UInt<1>
    wire _and_rtl_sBox_8_v_132_867_Y: UInt<1>
    wire _and_rtl_sBox_8_v_151_801_Y: UInt<1>
    wire _and_rtl_sBox_8_v_151_806_Y: UInt<1>
    wire _and_rtl_sBox_8_v_222_657_Y: UInt<1>
    wire _and_rtl_sBox_8_v_223_661_Y: UInt<1>
    wire _and_rtl_sBox_8_v_224_665_Y: UInt<1>
    wire _and_rtl_sBox_8_v_227_702_Y: UInt<1>
    wire _and_rtl_sBox_8_v_228_693_Y: UInt<1>
    wire _and_rtl_sBox_8_v_229_684_Y: UInt<1>
    wire _and_rtl_sBox_8_v_230_671_Y: UInt<1>
    wire _and_rtl_sBox_8_v_230_676_Y: UInt<1>
    wire _not_rtl_sBox_8_v_121_811_Y: UInt<2>
    wire _not_rtl_sBox_8_v_121_813_Y: UInt<1>
    wire _not_rtl_sBox_8_v_121_817_Y: UInt<2>
    wire _not_rtl_sBox_8_v_121_819_Y: UInt<1>
    wire _not_rtl_sBox_8_v_121_826_Y: UInt<2>
    wire _not_rtl_sBox_8_v_121_828_Y: UInt<1>
    wire _not_rtl_sBox_8_v_121_833_Y: UInt<2>
    wire _not_rtl_sBox_8_v_121_835_Y: UInt<1>
    wire _not_rtl_sBox_8_v_121_852_Y: UInt<2>
    wire _not_rtl_sBox_8_v_121_854_Y: UInt<1>
    wire _not_rtl_sBox_8_v_121_859_Y: UInt<2>
    wire _not_rtl_sBox_8_v_121_861_Y: UInt<1>
    wire _not_rtl_sBox_8_v_151_800_Y: UInt<1>
    wire _not_rtl_sBox_8_v_151_802_Y: UInt<1>
    wire _not_rtl_sBox_8_v_151_805_Y: UInt<1>
    wire _not_rtl_sBox_8_v_151_807_Y: UInt<1>
    wire _not_rtl_sBox_8_v_227_701_Y: UInt<1>
    wire _not_rtl_sBox_8_v_227_703_Y: UInt<1>
    wire _not_rtl_sBox_8_v_228_692_Y: UInt<1>
    wire _not_rtl_sBox_8_v_228_694_Y: UInt<1>
    wire _not_rtl_sBox_8_v_229_683_Y: UInt<1>
    wire _not_rtl_sBox_8_v_229_685_Y: UInt<1>
    wire _not_rtl_sBox_8_v_230_668_Y: UInt<1>
    wire _not_rtl_sBox_8_v_230_672_Y: UInt<1>
    wire _not_rtl_sBox_8_v_230_677_Y: UInt<1>
    wire _or_rtl_sBox_8_v_151_799_Y: UInt<1>
    wire _or_rtl_sBox_8_v_151_804_Y: UInt<1>
    wire _or_rtl_sBox_8_v_227_700_Y: UInt<1>
    wire _or_rtl_sBox_8_v_228_691_Y: UInt<1>
    wire _or_rtl_sBox_8_v_229_682_Y: UInt<1>
    wire _or_rtl_sBox_8_v_230_667_Y: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_224_663_Y: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_224_664_Y: UInt<1>
    wire _ternary_rtl_sBox_8_v_315_599_Y: UInt<8>
    wire _xor_rtl_sBox_8_v_222_655_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_222_656_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_223_659_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_223_660_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_227_704_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_227_705_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_228_689_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_228_690_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_228_695_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_228_696_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_229_680_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_229_681_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_229_686_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_229_687_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_230_673_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_230_678_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_261_620_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_263_623_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_270_630_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_270_633_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_270_635_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_270_638_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_271_642_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_285_891_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_286_893_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_287_895_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_288_897_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_296_907_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_296_910_Y: UInt<1>
    wire _xor_rtl_sBox_8_v_296_914_Y: UInt<1>
    wire base_new: UInt<8>
    wire base_new_dec: UInt<8>
    wire base_new_enc: UInt<8>
    wire base_new_pp: UInt<8>
    wire out_gf_inv8_1: UInt<8>
    wire out_gf_inv8_stage1: UInt<4>
    wire out_gf_pp: UInt<4>
    wire _and_rtl_sBox_8_v_121_810: UInt<2>
    wire _and_rtl_sBox_8_v_121_812: UInt<1>
    wire _and_rtl_sBox_8_v_121_816: UInt<2>
    wire _and_rtl_sBox_8_v_121_818: UInt<1>
    wire _and_rtl_sBox_8_v_121_825: UInt<2>
    wire _and_rtl_sBox_8_v_121_827: UInt<1>
    wire _and_rtl_sBox_8_v_121_832: UInt<2>
    wire _and_rtl_sBox_8_v_121_834: UInt<1>
    wire _and_rtl_sBox_8_v_121_851: UInt<2>
    wire _and_rtl_sBox_8_v_121_853: UInt<1>
    wire _and_rtl_sBox_8_v_121_858: UInt<2>
    wire _and_rtl_sBox_8_v_121_860: UInt<1>
    wire _and_rtl_sBox_8_v_131_839: UInt<2>
    wire _and_rtl_sBox_8_v_131_865: UInt<2>
    wire _and_rtl_sBox_8_v_132_841: UInt<1>
    wire _and_rtl_sBox_8_v_132_867: UInt<1>
    wire _and_rtl_sBox_8_v_151_801: UInt<1>
    wire _and_rtl_sBox_8_v_151_806: UInt<1>
    wire _and_rtl_sBox_8_v_222_657: UInt<1>
    wire _and_rtl_sBox_8_v_223_661: UInt<1>
    wire _and_rtl_sBox_8_v_224_665: UInt<1>
    wire _and_rtl_sBox_8_v_227_702: UInt<1>
    wire _and_rtl_sBox_8_v_228_693: UInt<1>
    wire _and_rtl_sBox_8_v_229_684: UInt<1>
    wire _and_rtl_sBox_8_v_230_671: UInt<1>
    wire _and_rtl_sBox_8_v_230_676: UInt<1>
    wire _not_rtl_sBox_8_v_121_811: UInt<2>
    wire _not_rtl_sBox_8_v_121_813: UInt<1>
    wire _not_rtl_sBox_8_v_121_817: UInt<2>
    wire _not_rtl_sBox_8_v_121_819: UInt<1>
    wire _not_rtl_sBox_8_v_121_826: UInt<2>
    wire _not_rtl_sBox_8_v_121_828: UInt<1>
    wire _not_rtl_sBox_8_v_121_833: UInt<2>
    wire _not_rtl_sBox_8_v_121_835: UInt<1>
    wire _not_rtl_sBox_8_v_121_852: UInt<2>
    wire _not_rtl_sBox_8_v_121_854: UInt<1>
    wire _not_rtl_sBox_8_v_121_859: UInt<2>
    wire _not_rtl_sBox_8_v_121_861: UInt<1>
    wire _not_rtl_sBox_8_v_131_840: UInt<2>
    wire _not_rtl_sBox_8_v_131_866: UInt<2>
    wire _not_rtl_sBox_8_v_132_842: UInt<1>
    wire _not_rtl_sBox_8_v_132_868: UInt<1>
    wire _not_rtl_sBox_8_v_151_800: UInt<1>
    wire _not_rtl_sBox_8_v_151_802: UInt<1>
    wire _not_rtl_sBox_8_v_151_805: UInt<1>
    wire _not_rtl_sBox_8_v_151_807: UInt<1>
    wire _not_rtl_sBox_8_v_222_658: UInt<1>
    wire _not_rtl_sBox_8_v_223_662: UInt<1>
    wire _not_rtl_sBox_8_v_224_666: UInt<1>
    wire _not_rtl_sBox_8_v_227_701: UInt<1>
    wire _not_rtl_sBox_8_v_227_703: UInt<1>
    wire _not_rtl_sBox_8_v_228_692: UInt<1>
    wire _not_rtl_sBox_8_v_228_694: UInt<1>
    wire _not_rtl_sBox_8_v_229_683: UInt<1>
    wire _not_rtl_sBox_8_v_229_685: UInt<1>
    wire _not_rtl_sBox_8_v_230_668: UInt<1>
    wire _not_rtl_sBox_8_v_230_672: UInt<1>
    wire _not_rtl_sBox_8_v_230_677: UInt<1>
    wire _not_rtl_sBox_8_v_261_621: UInt<1>
    wire _not_rtl_sBox_8_v_263_624: UInt<1>
    wire _not_rtl_sBox_8_v_270_631: UInt<1>
    wire _not_rtl_sBox_8_v_270_632: UInt<1>
    wire _not_rtl_sBox_8_v_270_636: UInt<1>
    wire _not_rtl_sBox_8_v_270_639: UInt<1>
    wire _not_rtl_sBox_8_v_271_643: UInt<1>
    wire _not_rtl_sBox_8_v_285_935: UInt<1>
    wire _not_rtl_sBox_8_v_286_894: UInt<1>
    wire _not_rtl_sBox_8_v_287_939: UInt<1>
    wire _not_rtl_sBox_8_v_288_898: UInt<1>
    wire _not_rtl_sBox_8_v_296_911: UInt<1>
    wire _not_rtl_sBox_8_v_296_915: UInt<1>
    wire _not_rtl_sBox_8_v_296_949: UInt<1>
    wire _not_rtl_sBox_8_v_296_951: UInt<1>
    wire _not_rtl_sBox_8_v_315_600: UInt<8>
    wire _not_rtl_sBox_8_v_326_602: UInt<8>
    wire _not_rtl_sBox_8_v_327_603: UInt<8>
    wire _or_rtl_sBox_8_v_151_799: UInt<1>
    wire _or_rtl_sBox_8_v_151_804: UInt<1>
    wire _or_rtl_sBox_8_v_227_700: UInt<1>
    wire _or_rtl_sBox_8_v_228_691: UInt<1>
    wire _or_rtl_sBox_8_v_229_682: UInt<1>
    wire _or_rtl_sBox_8_v_230_667: UInt<1>
    reg _procdff_2121: UInt<4>, asClock(clk)
    reg _procdff_2122: UInt<8>, asClock(clk)
    wire _reduce_xor_rtl_sBox_8_v_133_843: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_133_869: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_149_797: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_150_798: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_155_815: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_204_838: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_204_863: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_204_864: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_224_663: UInt<1>
    wire _reduce_xor_rtl_sBox_8_v_224_664: UInt<1>
    wire _ternary_rtl_sBox_8_v_315_599: UInt<8>
    wire _xor_rtl_sBox_8_v_121_814: UInt<2>
    wire _xor_rtl_sBox_8_v_121_820: UInt<2>
    wire _xor_rtl_sBox_8_v_121_829: UInt<2>
    wire _xor_rtl_sBox_8_v_121_836: UInt<2>
    wire _xor_rtl_sBox_8_v_121_855: UInt<2>
    wire _xor_rtl_sBox_8_v_121_862: UInt<2>
    wire _xor_rtl_sBox_8_v_133_844: UInt<1>
    wire _xor_rtl_sBox_8_v_133_870: UInt<1>
    wire _xor_rtl_sBox_8_v_151_803: UInt<1>
    wire _xor_rtl_sBox_8_v_151_808: UInt<1>
    wire _xor_rtl_sBox_8_v_199_847: UInt<2>
    wire _xor_rtl_sBox_8_v_200_822: UInt<2>
    wire _xor_rtl_sBox_8_v_200_848: UInt<2>
    wire _xor_rtl_sBox_8_v_202_824: UInt<1>
    wire _xor_rtl_sBox_8_v_202_849: UInt<1>
    wire _xor_rtl_sBox_8_v_202_850: UInt<1>
    wire _xor_rtl_sBox_8_v_203_831: UInt<1>
    wire _xor_rtl_sBox_8_v_203_856: UInt<1>
    wire _xor_rtl_sBox_8_v_203_857: UInt<1>
    wire _xor_rtl_sBox_8_v_206_845: UInt<2>
    wire _xor_rtl_sBox_8_v_206_846: UInt<2>
    wire _xor_rtl_sBox_8_v_206_871: UInt<2>
    wire _xor_rtl_sBox_8_v_206_872: UInt<2>
    wire _xor_rtl_sBox_8_v_222_655: UInt<1>
    wire _xor_rtl_sBox_8_v_222_656: UInt<1>
    wire _xor_rtl_sBox_8_v_227_698: UInt<1>
    wire _xor_rtl_sBox_8_v_227_699: UInt<1>
    wire _xor_rtl_sBox_8_v_227_704: UInt<1>
    wire _xor_rtl_sBox_8_v_227_705: UInt<1>
    wire _xor_rtl_sBox_8_v_227_706: UInt<1>
    wire _xor_rtl_sBox_8_v_228_689: UInt<1>
    wire _xor_rtl_sBox_8_v_228_690: UInt<1>
    wire _xor_rtl_sBox_8_v_228_695: UInt<1>
    wire _xor_rtl_sBox_8_v_228_696: UInt<1>
    wire _xor_rtl_sBox_8_v_228_697: UInt<1>
    wire _xor_rtl_sBox_8_v_229_680: UInt<1>
    wire _xor_rtl_sBox_8_v_229_681: UInt<1>
    wire _xor_rtl_sBox_8_v_229_686: UInt<1>
    wire _xor_rtl_sBox_8_v_229_687: UInt<1>
    wire _xor_rtl_sBox_8_v_229_688: UInt<1>
    wire _xor_rtl_sBox_8_v_230_673: UInt<1>
    wire _xor_rtl_sBox_8_v_230_678: UInt<1>
    wire _xor_rtl_sBox_8_v_230_679: UInt<1>
    wire _xor_rtl_sBox_8_v_260_619: UInt<1>
    wire _xor_rtl_sBox_8_v_261_620: UInt<1>
    wire _xor_rtl_sBox_8_v_262_622: UInt<1>
    wire _xor_rtl_sBox_8_v_263_623: UInt<1>
    wire _xor_rtl_sBox_8_v_264_625: UInt<1>
    wire _xor_rtl_sBox_8_v_265_626: UInt<1>
    wire _xor_rtl_sBox_8_v_266_627: UInt<1>
    wire _xor_rtl_sBox_8_v_267_628: UInt<1>
    wire _xor_rtl_sBox_8_v_268_629: UInt<1>
    wire _xor_rtl_sBox_8_v_270_630: UInt<1>
    wire _xor_rtl_sBox_8_v_270_633: UInt<1>
    wire _xor_rtl_sBox_8_v_270_634: UInt<1>
    wire _xor_rtl_sBox_8_v_270_635: UInt<1>
    wire _xor_rtl_sBox_8_v_270_637: UInt<1>
    wire _xor_rtl_sBox_8_v_270_638: UInt<1>
    wire _xor_rtl_sBox_8_v_271_640: UInt<1>
    wire _xor_rtl_sBox_8_v_271_641: UInt<1>
    wire _xor_rtl_sBox_8_v_271_642: UInt<1>
    wire _xor_rtl_sBox_8_v_271_644: UInt<1>
    wire _xor_rtl_sBox_8_v_271_645: UInt<1>
    wire _xor_rtl_sBox_8_v_282_931: UInt<1>
    wire _xor_rtl_sBox_8_v_283_932: UInt<1>
    wire _xor_rtl_sBox_8_v_284_933: UInt<1>
    wire _xor_rtl_sBox_8_v_285_934: UInt<1>
    wire _xor_rtl_sBox_8_v_286_936: UInt<1>
    wire _xor_rtl_sBox_8_v_287_938: UInt<1>
    wire _xor_rtl_sBox_8_v_288_897: UInt<1>
    wire _xor_rtl_sBox_8_v_289_899: UInt<1>
    wire _xor_rtl_sBox_8_v_290_900: UInt<1>
    wire _xor_rtl_sBox_8_v_291_901: UInt<1>
    wire _xor_rtl_sBox_8_v_294_904: UInt<1>
    wire _xor_rtl_sBox_8_v_294_905: UInt<1>
    wire _xor_rtl_sBox_8_v_296_907: UInt<1>
    wire _xor_rtl_sBox_8_v_296_909: UInt<1>
    wire _xor_rtl_sBox_8_v_296_912: UInt<1>
    wire _xor_rtl_sBox_8_v_296_953: UInt<1>
    wire _xor_rtl_sBox_8_v_296_956: UInt<1>
    wire _xor_rtl_sBox_8_v_296_957: UInt<1>
    wire _74: UInt<1>


    _and_rtl_sBox_8_v_121_810 <= and(cat(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724, 0, 0), bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724, 1, 1)), asUInt(bits(out_gf_pp, 1, 0)))
    _and_rtl_sBox_8_v_121_812 <= and(_0_func__gf_muls_2_rtl_sBox_8_v_154_587__in3_0_0__732, asUInt(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_lw_0_0__726))
    _and_rtl_sBox_8_v_121_816 <= and(cat(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724, 0, 0), bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724, 1, 1)), asUInt(bits(out_gf_pp, 3, 2)))
    _and_rtl_sBox_8_v_121_818 <= and(_0_func__gf_muls_2_rtl_sBox_8_v_154_587__in3_0_0__732, asUInt(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_hg_0_0__725))
    _and_rtl_sBox_8_v_121_825 <= and(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 3, 2), asUInt(bits(base_new_pp, 3, 2)))
    _and_rtl_sBox_8_v_121_827 <= and(_0_func__gf_muls_2_rtl_sBox_8_v_202_590__in3_0_0__754, asUInt(_0_func__gf_muls_2_rtl_sBox_8_v_202_590__in4_0_0__755))
    _and_rtl_sBox_8_v_121_832 <= and(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 1, 0), asUInt(bits(base_new_pp, 1, 0)))
    _and_rtl_sBox_8_v_121_834 <= and(_0_func__gf_muls_2_rtl_sBox_8_v_203_591__in3_0_0__759, asUInt(_0_func__gf_muls_2_rtl_sBox_8_v_203_591__in4_0_0__760))
    _and_rtl_sBox_8_v_121_851 <= and(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 3, 2), asUInt(bits(base_new_pp, 7, 6)))
    _and_rtl_sBox_8_v_121_853 <= and(_0_func__gf_muls_2_rtl_sBox_8_v_202_590__in3_0_0__754, asUInt(_0_func__gf_muls_2_rtl_sBox_8_v_202_594__in4_0_0__784))
    _and_rtl_sBox_8_v_121_858 <= and(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 1, 0), asUInt(bits(base_new_pp, 5, 4)))
    _and_rtl_sBox_8_v_121_860 <= and(_0_func__gf_muls_2_rtl_sBox_8_v_203_591__in3_0_0__759, asUInt(_0_func__gf_muls_2_rtl_sBox_8_v_203_595__in4_0_0__789))
    _and_rtl_sBox_8_v_131_839 <= and(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in1_hl_1_0__746, asUInt(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in2_hl_1_0__747))
    _and_rtl_sBox_8_v_131_865 <= and(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in1_hl_1_0__746, asUInt(_0_func__gf_muls_4_rtl_sBox_8_v_249_593__xor_in2_hl_1_0__776))
    _and_rtl_sBox_8_v_132_841 <= and(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in3_0_0__764, asUInt(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in4_0_0__765))
    _and_rtl_sBox_8_v_132_867 <= and(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in3_0_0__764, asUInt(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__in4_0_0__794))
    _and_rtl_sBox_8_v_151_801 <= and(bits(out_gf_pp, 2, 2), asUInt(bits(out_gf_pp, 0, 0)))
    _and_rtl_sBox_8_v_151_806 <= and(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_hg_0_0__725, asUInt(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_lw_0_0__726))
    _and_rtl_sBox_8_v_222_657 <= and(_xor_rtl_sBox_8_v_222_655_Y, asUInt(_xor_rtl_sBox_8_v_222_656_Y))
    _and_rtl_sBox_8_v_223_661 <= and(_xor_rtl_sBox_8_v_223_659_Y, asUInt(_xor_rtl_sBox_8_v_223_660_Y))
    _and_rtl_sBox_8_v_224_665 <= and(_reduce_xor_rtl_sBox_8_v_224_663_Y, asUInt(_reduce_xor_rtl_sBox_8_v_224_664_Y))
    _and_rtl_sBox_8_v_227_702 <= and(bits(base_new, 7, 7), asUInt(bits(base_new, 3, 3)))
    _and_rtl_sBox_8_v_228_693 <= and(bits(base_new, 6, 6), asUInt(bits(base_new, 2, 2)))
    _and_rtl_sBox_8_v_229_684 <= and(bits(base_new, 5, 5), asUInt(bits(base_new, 1, 1)))
    _and_rtl_sBox_8_v_230_671 <= and(_xor_rtl_sBox_8_v_229_680_Y, asUInt(_xor_rtl_sBox_8_v_229_681_Y))
    _and_rtl_sBox_8_v_230_676 <= and(_xor_rtl_sBox_8_v_228_689_Y, asUInt(_xor_rtl_sBox_8_v_228_690_Y))
    _not_rtl_sBox_8_v_121_811 <= not(pad(_and_rtl_sBox_8_v_121_810_Y, 2))
    _not_rtl_sBox_8_v_121_813 <= not(pad(_and_rtl_sBox_8_v_121_812_Y, 1))
    _not_rtl_sBox_8_v_121_817 <= not(pad(_and_rtl_sBox_8_v_121_816_Y, 2))
    _not_rtl_sBox_8_v_121_819 <= not(pad(_and_rtl_sBox_8_v_121_818_Y, 1))
    _not_rtl_sBox_8_v_121_826 <= not(pad(_and_rtl_sBox_8_v_121_825_Y, 2))
    _not_rtl_sBox_8_v_121_828 <= not(pad(_and_rtl_sBox_8_v_121_827_Y, 1))
    _not_rtl_sBox_8_v_121_833 <= not(pad(_and_rtl_sBox_8_v_121_832_Y, 2))
    _not_rtl_sBox_8_v_121_835 <= not(pad(_and_rtl_sBox_8_v_121_834_Y, 1))
    _not_rtl_sBox_8_v_121_852 <= not(pad(_and_rtl_sBox_8_v_121_851_Y, 2))
    _not_rtl_sBox_8_v_121_854 <= not(pad(_and_rtl_sBox_8_v_121_853_Y, 1))
    _not_rtl_sBox_8_v_121_859 <= not(pad(_and_rtl_sBox_8_v_121_858_Y, 2))
    _not_rtl_sBox_8_v_121_861 <= not(pad(_and_rtl_sBox_8_v_121_860_Y, 1))
    _not_rtl_sBox_8_v_131_840 <= not(pad(_and_rtl_sBox_8_v_131_839_Y, 2))
    _not_rtl_sBox_8_v_131_866 <= not(pad(_and_rtl_sBox_8_v_131_865_Y, 2))
    _not_rtl_sBox_8_v_132_842 <= not(pad(_and_rtl_sBox_8_v_132_841_Y, 1))
    _not_rtl_sBox_8_v_132_868 <= not(pad(_and_rtl_sBox_8_v_132_867_Y, 1))
    _not_rtl_sBox_8_v_151_800 <= not(pad(_or_rtl_sBox_8_v_151_799_Y, 1))
    _not_rtl_sBox_8_v_151_802 <= not(pad(_and_rtl_sBox_8_v_151_801_Y, 1))
    _not_rtl_sBox_8_v_151_805 <= not(pad(_or_rtl_sBox_8_v_151_804_Y, 1))
    _not_rtl_sBox_8_v_151_807 <= not(pad(_and_rtl_sBox_8_v_151_806_Y, 1))
    _not_rtl_sBox_8_v_222_658 <= not(pad(_and_rtl_sBox_8_v_222_657_Y, 1))
    _not_rtl_sBox_8_v_223_662 <= not(pad(_and_rtl_sBox_8_v_223_661_Y, 1))
    _not_rtl_sBox_8_v_224_666 <= not(pad(_and_rtl_sBox_8_v_224_665_Y, 1))
    _not_rtl_sBox_8_v_227_701 <= not(pad(_or_rtl_sBox_8_v_227_700_Y, 1))
    _not_rtl_sBox_8_v_227_703 <= not(pad(_and_rtl_sBox_8_v_227_702_Y, 1))
    _not_rtl_sBox_8_v_228_692 <= not(pad(_or_rtl_sBox_8_v_228_691_Y, 1))
    _not_rtl_sBox_8_v_228_694 <= not(pad(_and_rtl_sBox_8_v_228_693_Y, 1))
    _not_rtl_sBox_8_v_229_683 <= not(pad(_or_rtl_sBox_8_v_229_682_Y, 1))
    _not_rtl_sBox_8_v_229_685 <= not(pad(_and_rtl_sBox_8_v_229_684_Y, 1))
    _not_rtl_sBox_8_v_230_668 <= not(pad(_or_rtl_sBox_8_v_230_667_Y, 1))
    _not_rtl_sBox_8_v_230_672 <= not(pad(_and_rtl_sBox_8_v_230_671_Y, 1))
    _not_rtl_sBox_8_v_230_677 <= not(pad(_and_rtl_sBox_8_v_230_676_Y, 1))
    _not_rtl_sBox_8_v_261_621 <= not(pad(_xor_rtl_sBox_8_v_261_620_Y, 1))
    _not_rtl_sBox_8_v_263_624 <= not(pad(_xor_rtl_sBox_8_v_263_623_Y, 1))
    _not_rtl_sBox_8_v_270_631 <= not(pad(_xor_rtl_sBox_8_v_270_630_Y, 1))
    _not_rtl_sBox_8_v_270_632 <= not(pad(bits(sbox_in, 0, 0), 1))
    _not_rtl_sBox_8_v_270_636 <= not(pad(_xor_rtl_sBox_8_v_270_635_Y, 1))
    _not_rtl_sBox_8_v_270_639 <= not(pad(_xor_rtl_sBox_8_v_270_638_Y, 1))
    _not_rtl_sBox_8_v_271_643 <= not(pad(_xor_rtl_sBox_8_v_271_642_Y, 1))
    _not_rtl_sBox_8_v_285_935 <= not(pad(_xor_rtl_sBox_8_v_285_891_Y, 1))
    _not_rtl_sBox_8_v_286_894 <= not(pad(_xor_rtl_sBox_8_v_286_893_Y, 1))
    _not_rtl_sBox_8_v_287_939 <= not(pad(_xor_rtl_sBox_8_v_287_895_Y, 1))
    _not_rtl_sBox_8_v_288_898 <= not(pad(_xor_rtl_sBox_8_v_288_897_Y, 1))
    _not_rtl_sBox_8_v_296_911 <= not(pad(_xor_rtl_sBox_8_v_296_910_Y, 1))
    _not_rtl_sBox_8_v_296_915 <= not(pad(_xor_rtl_sBox_8_v_296_914_Y, 1))
    _not_rtl_sBox_8_v_296_949 <= not(pad(bits(out_gf_inv8_1, 2, 2), 1))
    _not_rtl_sBox_8_v_296_951 <= not(pad(_xor_rtl_sBox_8_v_296_907_Y, 1))
    _not_rtl_sBox_8_v_315_600 <= not(pad(_ternary_rtl_sBox_8_v_315_599_Y, 8))
    _not_rtl_sBox_8_v_326_602 <= not(pad(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 8))
    _not_rtl_sBox_8_v_327_603 <= not(pad(cat(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_327_581__isomorphism_inv_7_0__917, 7, 2), cat(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r6_0_0__883, bits(_0_func__isomorphism_inv_rtl_sBox_8_v_327_581__isomorphism_inv_7_0__917, 0, 0))), 8))
    _or_rtl_sBox_8_v_151_799 <= or(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_hg_0_0__725, asUInt(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_lw_0_0__726))
    _or_rtl_sBox_8_v_151_804 <= or(bits(out_gf_pp, 3, 3), asUInt(bits(out_gf_pp, 1, 1)))
    _or_rtl_sBox_8_v_227_700 <= or(_xor_rtl_sBox_8_v_223_659_Y, asUInt(_xor_rtl_sBox_8_v_223_660_Y))
    _or_rtl_sBox_8_v_228_691 <= or(_xor_rtl_sBox_8_v_228_689_Y, asUInt(_xor_rtl_sBox_8_v_228_690_Y))
    _or_rtl_sBox_8_v_229_682 <= or(_xor_rtl_sBox_8_v_229_680_Y, asUInt(_xor_rtl_sBox_8_v_229_681_Y))
    _or_rtl_sBox_8_v_230_667 <= or(bits(base_new, 4, 4), asUInt(bits(base_new, 0, 0)))
    _procdff_2121 <= out_gf_inv8_stage1
    _procdff_2122 <= base_new
    _reduce_xor_rtl_sBox_8_v_133_843 <= xorr(pad(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in1_in2_1_0__766, 1))
    _reduce_xor_rtl_sBox_8_v_133_869 <= xorr(pad(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in1_in2_1_0__795, 1))
    _reduce_xor_rtl_sBox_8_v_149_797 <= xorr(pad(bits(out_gf_pp, 3, 2), 1))
    _reduce_xor_rtl_sBox_8_v_150_798 <= xorr(pad(bits(out_gf_pp, 1, 0), 1))
    _reduce_xor_rtl_sBox_8_v_155_815 <= xorr(pad(cat(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724, 0, 0), bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724, 1, 1)), 1))
    _reduce_xor_rtl_sBox_8_v_204_838 <= xorr(pad(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in2_hl_1_0__747, 1))
    _reduce_xor_rtl_sBox_8_v_204_863 <= xorr(pad(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in1_hl_1_0__746, 1))
    _reduce_xor_rtl_sBox_8_v_204_864 <= xorr(pad(_0_func__gf_muls_4_rtl_sBox_8_v_249_593__xor_in2_hl_1_0__776, 1))
    _reduce_xor_rtl_sBox_8_v_224_663 <= xorr(pad(bits(base_new, 7, 4), 1))
    _reduce_xor_rtl_sBox_8_v_224_664 <= xorr(pad(bits(base_new, 3, 0), 1))
    _ternary_rtl_sBox_8_v_315_599 <= mux(enc_dec, base_new_enc, base_new_dec)
    _xor_rtl_sBox_8_v_121_814 <= xor(_not_rtl_sBox_8_v_121_811_Y, asUInt(cat(_not_rtl_sBox_8_v_121_813_Y, _not_rtl_sBox_8_v_121_813_Y)))
    _xor_rtl_sBox_8_v_121_820 <= xor(_not_rtl_sBox_8_v_121_817_Y, asUInt(cat(_not_rtl_sBox_8_v_121_819_Y, _not_rtl_sBox_8_v_121_819_Y)))
    _xor_rtl_sBox_8_v_121_829 <= xor(_not_rtl_sBox_8_v_121_826_Y, asUInt(cat(_not_rtl_sBox_8_v_121_828_Y, _not_rtl_sBox_8_v_121_828_Y)))
    _xor_rtl_sBox_8_v_121_836 <= xor(_not_rtl_sBox_8_v_121_833_Y, asUInt(cat(_not_rtl_sBox_8_v_121_835_Y, _not_rtl_sBox_8_v_121_835_Y)))
    _xor_rtl_sBox_8_v_121_855 <= xor(_not_rtl_sBox_8_v_121_852_Y, asUInt(cat(_not_rtl_sBox_8_v_121_854_Y, _not_rtl_sBox_8_v_121_854_Y)))
    _xor_rtl_sBox_8_v_121_862 <= xor(_not_rtl_sBox_8_v_121_859_Y, asUInt(cat(_not_rtl_sBox_8_v_121_861_Y, _not_rtl_sBox_8_v_121_861_Y)))
    _xor_rtl_sBox_8_v_133_844 <= xor(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in3_in4_0_0__767, asUInt(bits(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in1_in2_1_0__766, 0, 0)))
    _xor_rtl_sBox_8_v_133_870 <= xor(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in3_in4_0_0__796, asUInt(bits(_0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in1_in2_1_0__795, 0, 0)))
    _xor_rtl_sBox_8_v_151_803 <= xor(_not_rtl_sBox_8_v_151_800_Y, asUInt(_not_rtl_sBox_8_v_151_802_Y))
    _xor_rtl_sBox_8_v_151_808 <= xor(_not_rtl_sBox_8_v_151_805_Y, asUInt(_not_rtl_sBox_8_v_151_807_Y))
    _xor_rtl_sBox_8_v_199_847 <= xor(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 3, 2), asUInt(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 1, 0)))
    _xor_rtl_sBox_8_v_200_822 <= xor(bits(base_new_pp, 3, 2), asUInt(bits(base_new_pp, 1, 0)))
    _xor_rtl_sBox_8_v_200_848 <= xor(bits(base_new_pp, 7, 6), asUInt(bits(base_new_pp, 5, 4)))
    _xor_rtl_sBox_8_v_202_824 <= xor(bits(base_new_pp, 3, 3), asUInt(bits(base_new_pp, 2, 2)))
    _xor_rtl_sBox_8_v_202_849 <= xor(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 3, 3), asUInt(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 2, 2)))
    _xor_rtl_sBox_8_v_202_850 <= xor(bits(base_new_pp, 7, 7), asUInt(bits(base_new_pp, 6, 6)))
    _xor_rtl_sBox_8_v_203_831 <= xor(bits(base_new_pp, 1, 1), asUInt(bits(base_new_pp, 0, 0)))
    _xor_rtl_sBox_8_v_203_856 <= xor(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 1, 1), asUInt(bits(_0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717, 0, 0)))
    _xor_rtl_sBox_8_v_203_857 <= xor(bits(base_new_pp, 5, 5), asUInt(bits(base_new_pp, 4, 4)))
    _xor_rtl_sBox_8_v_206_845 <= xor(_0_func__gf_muls_2_rtl_sBox_8_v_203_591__gf_muls_2_1_0__756, asUInt(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__out_gf_mul_scl_1_1_0__750))
    _xor_rtl_sBox_8_v_206_846 <= xor(_0_func__gf_muls_2_rtl_sBox_8_v_202_590__gf_muls_2_1_0__751, asUInt(_0_func__gf_muls_4_rtl_sBox_8_v_248_589__out_gf_mul_scl_1_1_0__750))
    _xor_rtl_sBox_8_v_206_871 <= xor(_0_func__gf_muls_2_rtl_sBox_8_v_203_595__gf_muls_2_1_0__785, asUInt(_0_func__gf_muls_4_rtl_sBox_8_v_249_593__out_gf_mul_scl_1_1_0__779))
    _xor_rtl_sBox_8_v_206_872 <= xor(_0_func__gf_muls_2_rtl_sBox_8_v_202_594__gf_muls_2_1_0__780, asUInt(_0_func__gf_muls_4_rtl_sBox_8_v_249_593__out_gf_mul_scl_1_1_0__779))
    _xor_rtl_sBox_8_v_222_655 <= xor(bits(base_new, 7, 7), asUInt(bits(base_new, 6, 6)))
    _xor_rtl_sBox_8_v_222_656 <= xor(bits(base_new, 3, 3), asUInt(bits(base_new, 2, 2)))
    _xor_rtl_sBox_8_v_227_698 <= xor(bits(base_new, 6, 6), asUInt(bits(base_new, 4, 4)))
    _xor_rtl_sBox_8_v_227_699 <= xor(bits(base_new, 2, 2), asUInt(bits(base_new, 0, 0)))
    _xor_rtl_sBox_8_v_227_704 <= xor(_not_rtl_sBox_8_v_227_701_Y, asUInt(_not_rtl_sBox_8_v_227_703_Y))
    _xor_rtl_sBox_8_v_227_705 <= xor(_xor_rtl_sBox_8_v_227_704_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c1_0_0__652))
    _xor_rtl_sBox_8_v_227_706 <= xor(_xor_rtl_sBox_8_v_227_705_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c3_0_0__654))
    _xor_rtl_sBox_8_v_228_689 <= xor(bits(base_new, 7, 7), asUInt(bits(base_new, 5, 5)))
    _xor_rtl_sBox_8_v_228_690 <= xor(bits(base_new, 3, 3), asUInt(bits(base_new, 1, 1)))
    _xor_rtl_sBox_8_v_228_695 <= xor(_not_rtl_sBox_8_v_228_692_Y, asUInt(_not_rtl_sBox_8_v_228_694_Y))
    _xor_rtl_sBox_8_v_228_696 <= xor(_xor_rtl_sBox_8_v_228_695_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c1_0_0__652))
    _xor_rtl_sBox_8_v_228_697 <= xor(_xor_rtl_sBox_8_v_228_696_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c2_0_0__653))
    _xor_rtl_sBox_8_v_229_680 <= xor(bits(base_new, 5, 5), asUInt(bits(base_new, 4, 4)))
    _xor_rtl_sBox_8_v_229_681 <= xor(bits(base_new, 1, 1), asUInt(bits(base_new, 0, 0)))
    _xor_rtl_sBox_8_v_229_686 <= xor(_not_rtl_sBox_8_v_229_683_Y, asUInt(_not_rtl_sBox_8_v_229_685_Y))
    _xor_rtl_sBox_8_v_229_687 <= xor(_xor_rtl_sBox_8_v_229_686_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c2_0_0__653))
    _xor_rtl_sBox_8_v_229_688 <= xor(_xor_rtl_sBox_8_v_229_687_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c3_0_0__654))
    _xor_rtl_sBox_8_v_230_673 <= xor(_not_rtl_sBox_8_v_230_668_Y, asUInt(_not_rtl_sBox_8_v_230_672_Y))
    _xor_rtl_sBox_8_v_230_678 <= xor(_xor_rtl_sBox_8_v_230_673_Y, asUInt(_not_rtl_sBox_8_v_230_677_Y))
    _xor_rtl_sBox_8_v_230_679 <= xor(_xor_rtl_sBox_8_v_230_678_Y, asUInt(_0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c2_0_0__653))
    _xor_rtl_sBox_8_v_260_619 <= xor(bits(sbox_in, 7, 7), asUInt(bits(sbox_in, 5, 5)))
    _xor_rtl_sBox_8_v_261_620 <= xor(bits(sbox_in, 7, 7), asUInt(bits(sbox_in, 4, 4)))
    _xor_rtl_sBox_8_v_262_622 <= xor(bits(sbox_in, 6, 6), asUInt(bits(sbox_in, 0, 0)))
    _xor_rtl_sBox_8_v_263_623 <= xor(bits(sbox_in, 5, 5), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r3_0_0__610))
    _xor_rtl_sBox_8_v_264_625 <= xor(bits(sbox_in, 4, 4), asUInt(bits(base_new_enc, 1, 1)))
    _xor_rtl_sBox_8_v_265_626 <= xor(bits(sbox_in, 3, 3), asUInt(bits(sbox_in, 0, 0)))
    _xor_rtl_sBox_8_v_266_627 <= xor(bits(sbox_in, 2, 2), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r1_0_0__608))
    _xor_rtl_sBox_8_v_267_628 <= xor(bits(sbox_in, 1, 1), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r3_0_0__610))
    _xor_rtl_sBox_8_v_268_629 <= xor(bits(sbox_in, 3, 3), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r8_0_0__615))
    _xor_rtl_sBox_8_v_270_630 <= xor(bits(sbox_in, 2, 2), asUInt(bits(base_new_dec, 4, 4)))
    _xor_rtl_sBox_8_v_270_633 <= xor(bits(sbox_in, 1, 1), asUInt(bits(base_new_dec, 7, 7)))
    _xor_rtl_sBox_8_v_270_634 <= xor(_xor_rtl_sBox_8_v_270_633_Y, asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r6_0_0__613))
    _xor_rtl_sBox_8_v_270_635 <= xor(_0_func__isomorphism_rtl_sBox_8_v_313_582__r1_0_0__608, asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r3_0_0__610))
    _xor_rtl_sBox_8_v_270_637 <= xor(bits(sbox_in, 1, 1), asUInt(bits(base_new_enc, 1, 1)))
    _xor_rtl_sBox_8_v_270_638 <= xor(bits(base_new_dec, 2, 2), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r8_0_0__615))
    _xor_rtl_sBox_8_v_271_640 <= xor(bits(sbox_in, 1, 1), asUInt(bits(base_new_enc, 6, 6)))
    _xor_rtl_sBox_8_v_271_641 <= xor(bits(sbox_in, 4, 4), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r6_0_0__613))
    _xor_rtl_sBox_8_v_271_642 <= xor(bits(sbox_in, 6, 6), asUInt(bits(base_new_dec, 7, 7)))
    _xor_rtl_sBox_8_v_271_644 <= xor(bits(sbox_in, 6, 6), asUInt(bits(sbox_in, 4, 4)))
    _xor_rtl_sBox_8_v_271_645 <= xor(bits(sbox_in, 4, 4), asUInt(_0_func__isomorphism_rtl_sBox_8_v_313_582__r8_0_0__615))
    _xor_rtl_sBox_8_v_282_931 <= xor(bits(out_gf_inv8_1, 7, 7), asUInt(bits(out_gf_inv8_1, 3, 3)))
    _xor_rtl_sBox_8_v_283_932 <= xor(bits(out_gf_inv8_1, 6, 6), asUInt(bits(out_gf_inv8_1, 4, 4)))
    _xor_rtl_sBox_8_v_284_933 <= xor(bits(out_gf_inv8_1, 6, 6), asUInt(bits(out_gf_inv8_1, 0, 0)))
    _xor_rtl_sBox_8_v_285_934 <= xor(bits(out_gf_inv8_1, 5, 5), asUInt(bits(out_gf_inv8_1, 3, 3)))
    _xor_rtl_sBox_8_v_286_936 <= xor(bits(out_gf_inv8_1, 5, 5), asUInt(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 6, 6)))
    _xor_rtl_sBox_8_v_287_938 <= xor(bits(out_gf_inv8_1, 5, 5), asUInt(bits(out_gf_inv8_1, 1, 1)))
    _xor_rtl_sBox_8_v_288_897 <= xor(bits(out_gf_inv8_1, 4, 4), asUInt(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r6_0_0__883))
    _xor_rtl_sBox_8_v_289_899 <= xor(bits(out_gf_inv8_1, 2, 2), asUInt(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 7, 7)))
    _xor_rtl_sBox_8_v_290_900 <= xor(bits(out_gf_inv8_1, 1, 1), asUInt(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r2_0_0__879))
    _xor_rtl_sBox_8_v_291_901 <= xor(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 5, 5), asUInt(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 4, 4)))
    _xor_rtl_sBox_8_v_294_904 <= xor(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 5, 5), asUInt(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r8_0_0__885))
    _xor_rtl_sBox_8_v_294_905 <= xor(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r2_0_0__879, asUInt(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 4, 4)))
    _xor_rtl_sBox_8_v_296_907 <= xor(bits(out_gf_inv8_1, 7, 7), asUInt(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 1, 1)))
    _xor_rtl_sBox_8_v_296_909 <= xor(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r8_0_0__885, asUInt(bits(_0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874, 0, 0)))
    _xor_rtl_sBox_8_v_296_912 <= xor(bits(out_gf_inv8_1, 2, 2), asUInt(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r10_0_0__887))
    _xor_rtl_sBox_8_v_296_953 <= xor(bits(out_gf_inv8_1, 6, 6), asUInt(bits(out_gf_inv8_1, 1, 1)))
    _xor_rtl_sBox_8_v_296_956 <= xor(bits(out_gf_inv8_1, 1, 1), asUInt(_0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r10_0_0__887))
    _xor_rtl_sBox_8_v_296_957 <= xor(bits(out_gf_inv8_1, 4, 4), asUInt(bits(out_gf_inv8_1, 1, 1)))
    _74 <= _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r6_0_0__883

    _0_func__gf_inv_4_rtl_sBox_8_v_247_585__gf_inv_4_3_0__717 <= cat(bits(_xor_rtl_sBox_8_v_121_814, 1, 0), bits(_xor_rtl_sBox_8_v_121_820, 1, 0))
    _0_func__gf_inv_4_rtl_sBox_8_v_247_585__in_sq2_3_1_0__724 <= cat(bits(_xor_rtl_sBox_8_v_151_808, 0, 0), bits(_xor_rtl_sBox_8_v_151_803, 0, 0))
    _0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_hg_0_0__725 <= bits(_reduce_xor_rtl_sBox_8_v_149_797, 0, 0)
    _0_func__gf_inv_4_rtl_sBox_8_v_247_585__xor_in_lw_0_0__726 <= bits(_reduce_xor_rtl_sBox_8_v_150_798, 0, 0)
    _0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c1_0_0__652 <= bits(_not_rtl_sBox_8_v_222_658, 0, 0)
    _0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c2_0_0__653 <= bits(_not_rtl_sBox_8_v_223_662, 0, 0)
    _0_func__gf_inv_8_stage1_rtl_sBox_8_v_316_583__c3_0_0__654 <= bits(_not_rtl_sBox_8_v_224_666, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_154_587__in3_0_0__732 <= bits(_reduce_xor_rtl_sBox_8_v_155_815, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_202_590__gf_muls_2_1_0__751 <= bits(_xor_rtl_sBox_8_v_121_829, 1, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_202_590__in3_0_0__754 <= bits(_xor_rtl_sBox_8_v_202_849, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_202_590__in4_0_0__755 <= bits(_xor_rtl_sBox_8_v_202_824, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_202_594__gf_muls_2_1_0__780 <= bits(_xor_rtl_sBox_8_v_121_855, 1, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_202_594__in4_0_0__784 <= bits(_xor_rtl_sBox_8_v_202_850, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_203_591__gf_muls_2_1_0__756 <= bits(_xor_rtl_sBox_8_v_121_836, 1, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_203_591__in3_0_0__759 <= bits(_xor_rtl_sBox_8_v_203_856, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_203_591__in4_0_0__760 <= bits(_xor_rtl_sBox_8_v_203_831, 0, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_203_595__gf_muls_2_1_0__785 <= bits(_xor_rtl_sBox_8_v_121_862, 1, 0)
    _0_func__gf_muls_2_rtl_sBox_8_v_203_595__in4_0_0__789 <= bits(_xor_rtl_sBox_8_v_203_857, 0, 0)
    _0_func__gf_muls_4_rtl_sBox_8_v_248_589__out_gf_mul_scl_1_1_0__750 <= cat(bits(_xor_rtl_sBox_8_v_133_844, 0, 0), bits(_reduce_xor_rtl_sBox_8_v_133_843, 0, 0))
    _0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in1_hl_1_0__746 <= bits(_xor_rtl_sBox_8_v_199_847, 1, 0)
    _0_func__gf_muls_4_rtl_sBox_8_v_248_589__xor_in2_hl_1_0__747 <= bits(_xor_rtl_sBox_8_v_200_822, 1, 0)
    _0_func__gf_muls_4_rtl_sBox_8_v_249_593__out_gf_mul_scl_1_1_0__779 <= cat(bits(_xor_rtl_sBox_8_v_133_870, 0, 0), bits(_reduce_xor_rtl_sBox_8_v_133_869, 0, 0))
    _0_func__gf_muls_4_rtl_sBox_8_v_249_593__xor_in2_hl_1_0__776 <= bits(_xor_rtl_sBox_8_v_200_848, 1, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in3_0_0__764 <= bits(_reduce_xor_rtl_sBox_8_v_204_863, 0, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__in4_0_0__765 <= bits(_reduce_xor_rtl_sBox_8_v_204_838, 0, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in1_in2_1_0__766 <= bits(_not_rtl_sBox_8_v_131_840, 1, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_592__nand_in3_in4_0_0__767 <= bits(_not_rtl_sBox_8_v_132_842, 0, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__in4_0_0__794 <= bits(_reduce_xor_rtl_sBox_8_v_204_864, 0, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in1_in2_1_0__795 <= bits(_not_rtl_sBox_8_v_131_866, 1, 0)
    _0_func__gf_muls_scl_2_rtl_sBox_8_v_204_596__nand_in3_in4_0_0__796 <= bits(_not_rtl_sBox_8_v_132_868, 0, 0)
    _0_func__isomorphism_rtl_sBox_8_v_313_582__r1_0_0__608 <= bits(_xor_rtl_sBox_8_v_260_619, 0, 0)
    _0_func__isomorphism_rtl_sBox_8_v_313_582__r3_0_0__610 <= bits(_xor_rtl_sBox_8_v_262_622, 0, 0)
    _0_func__isomorphism_rtl_sBox_8_v_313_582__r6_0_0__613 <= bits(_xor_rtl_sBox_8_v_265_626, 0, 0)
    _0_func__isomorphism_rtl_sBox_8_v_313_582__r8_0_0__615 <= bits(_xor_rtl_sBox_8_v_267_628, 0, 0)
    _0_func__isomorphism_inv_rtl_sBox_8_v_326_580__isomorphism_inv_7_0__874 <= cat(bits(_not_rtl_sBox_8_v_285_935, 0, 0), cat(bits(_xor_rtl_sBox_8_v_282_931, 0, 0), cat(bits(_xor_rtl_sBox_8_v_284_933, 0, 0), cat(bits(_not_rtl_sBox_8_v_286_894, 0, 0), cat(bits(_xor_rtl_sBox_8_v_294_905, 0, 0), cat(bits(_xor_rtl_sBox_8_v_294_904, 0, 0), cat(bits(_not_rtl_sBox_8_v_288_898, 0, 0), bits(_xor_rtl_sBox_8_v_290_900, 0, 0))))))))
    _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r10_0_0__887 <= bits(_xor_rtl_sBox_8_v_291_901, 0, 0)
    _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r2_0_0__879 <= bits(_xor_rtl_sBox_8_v_283_932, 0, 0)
    _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r6_0_0__883 <= bits(_not_rtl_sBox_8_v_287_939, 0, 0)
    _0_func__isomorphism_inv_rtl_sBox_8_v_326_597__r8_0_0__885 <= bits(_xor_rtl_sBox_8_v_289_899, 0, 0)
    _0_func__isomorphism_inv_rtl_sBox_8_v_327_581__isomorphism_inv_7_0__917 <= cat(bits(_not_rtl_sBox_8_v_296_915, 0, 0), cat(bits(_xor_rtl_sBox_8_v_296_956, 0, 0), cat(bits(_xor_rtl_sBox_8_v_296_912, 0, 0), cat(bits(_not_rtl_sBox_8_v_296_911, 0, 0), cat(bits(_xor_rtl_sBox_8_v_296_909, 0, 0), cat(bits(_not_rtl_sBox_8_v_296_951, 0, 0), cat(bits(_74, 0, 0), bits(_not_rtl_sBox_8_v_296_949, 0, 0))))))))
    _and_rtl_sBox_8_v_121_810_Y <= bits(_and_rtl_sBox_8_v_121_810, 1, 0)
    _and_rtl_sBox_8_v_121_812_Y <= bits(_and_rtl_sBox_8_v_121_812, 0, 0)
    _and_rtl_sBox_8_v_121_816_Y <= bits(_and_rtl_sBox_8_v_121_816, 1, 0)
    _and_rtl_sBox_8_v_121_818_Y <= bits(_and_rtl_sBox_8_v_121_818, 0, 0)
    _and_rtl_sBox_8_v_121_825_Y <= bits(_and_rtl_sBox_8_v_121_825, 1, 0)
    _and_rtl_sBox_8_v_121_827_Y <= bits(_and_rtl_sBox_8_v_121_827, 0, 0)
    _and_rtl_sBox_8_v_121_832_Y <= bits(_and_rtl_sBox_8_v_121_832, 1, 0)
    _and_rtl_sBox_8_v_121_834_Y <= bits(_and_rtl_sBox_8_v_121_834, 0, 0)
    _and_rtl_sBox_8_v_121_851_Y <= bits(_and_rtl_sBox_8_v_121_851, 1, 0)
    _and_rtl_sBox_8_v_121_853_Y <= bits(_and_rtl_sBox_8_v_121_853, 0, 0)
    _and_rtl_sBox_8_v_121_858_Y <= bits(_and_rtl_sBox_8_v_121_858, 1, 0)
    _and_rtl_sBox_8_v_121_860_Y <= bits(_and_rtl_sBox_8_v_121_860, 0, 0)
    _and_rtl_sBox_8_v_131_839_Y <= bits(_and_rtl_sBox_8_v_131_839, 1, 0)
    _and_rtl_sBox_8_v_131_865_Y <= bits(_and_rtl_sBox_8_v_131_865, 1, 0)
    _and_rtl_sBox_8_v_132_841_Y <= bits(_and_rtl_sBox_8_v_132_841, 0, 0)
    _and_rtl_sBox_8_v_132_867_Y <= bits(_and_rtl_sBox_8_v_132_867, 0, 0)
    _and_rtl_sBox_8_v_151_801_Y <= bits(_and_rtl_sBox_8_v_151_801, 0, 0)
    _and_rtl_sBox_8_v_151_806_Y <= bits(_and_rtl_sBox_8_v_151_806, 0, 0)
    _and_rtl_sBox_8_v_222_657_Y <= bits(_and_rtl_sBox_8_v_222_657, 0, 0)
    _and_rtl_sBox_8_v_223_661_Y <= bits(_and_rtl_sBox_8_v_223_661, 0, 0)
    _and_rtl_sBox_8_v_224_665_Y <= bits(_and_rtl_sBox_8_v_224_665, 0, 0)
    _and_rtl_sBox_8_v_227_702_Y <= bits(_and_rtl_sBox_8_v_227_702, 0, 0)
    _and_rtl_sBox_8_v_228_693_Y <= bits(_and_rtl_sBox_8_v_228_693, 0, 0)
    _and_rtl_sBox_8_v_229_684_Y <= bits(_and_rtl_sBox_8_v_229_684, 0, 0)
    _and_rtl_sBox_8_v_230_671_Y <= bits(_and_rtl_sBox_8_v_230_671, 0, 0)
    _and_rtl_sBox_8_v_230_676_Y <= bits(_and_rtl_sBox_8_v_230_676, 0, 0)
    _not_rtl_sBox_8_v_121_811_Y <= bits(_not_rtl_sBox_8_v_121_811, 1, 0)
    _not_rtl_sBox_8_v_121_813_Y <= bits(_not_rtl_sBox_8_v_121_813, 0, 0)
    _not_rtl_sBox_8_v_121_817_Y <= bits(_not_rtl_sBox_8_v_121_817, 1, 0)
    _not_rtl_sBox_8_v_121_819_Y <= bits(_not_rtl_sBox_8_v_121_819, 0, 0)
    _not_rtl_sBox_8_v_121_826_Y <= bits(_not_rtl_sBox_8_v_121_826, 1, 0)
    _not_rtl_sBox_8_v_121_828_Y <= bits(_not_rtl_sBox_8_v_121_828, 0, 0)
    _not_rtl_sBox_8_v_121_833_Y <= bits(_not_rtl_sBox_8_v_121_833, 1, 0)
    _not_rtl_sBox_8_v_121_835_Y <= bits(_not_rtl_sBox_8_v_121_835, 0, 0)
    _not_rtl_sBox_8_v_121_852_Y <= bits(_not_rtl_sBox_8_v_121_852, 1, 0)
    _not_rtl_sBox_8_v_121_854_Y <= bits(_not_rtl_sBox_8_v_121_854, 0, 0)
    _not_rtl_sBox_8_v_121_859_Y <= bits(_not_rtl_sBox_8_v_121_859, 1, 0)
    _not_rtl_sBox_8_v_121_861_Y <= bits(_not_rtl_sBox_8_v_121_861, 0, 0)
    _not_rtl_sBox_8_v_151_800_Y <= bits(_not_rtl_sBox_8_v_151_800, 0, 0)
    _not_rtl_sBox_8_v_151_802_Y <= bits(_not_rtl_sBox_8_v_151_802, 0, 0)
    _not_rtl_sBox_8_v_151_805_Y <= bits(_not_rtl_sBox_8_v_151_805, 0, 0)
    _not_rtl_sBox_8_v_151_807_Y <= bits(_not_rtl_sBox_8_v_151_807, 0, 0)
    _not_rtl_sBox_8_v_227_701_Y <= bits(_not_rtl_sBox_8_v_227_701, 0, 0)
    _not_rtl_sBox_8_v_227_703_Y <= bits(_not_rtl_sBox_8_v_227_703, 0, 0)
    _not_rtl_sBox_8_v_228_692_Y <= bits(_not_rtl_sBox_8_v_228_692, 0, 0)
    _not_rtl_sBox_8_v_228_694_Y <= bits(_not_rtl_sBox_8_v_228_694, 0, 0)
    _not_rtl_sBox_8_v_229_683_Y <= bits(_not_rtl_sBox_8_v_229_683, 0, 0)
    _not_rtl_sBox_8_v_229_685_Y <= bits(_not_rtl_sBox_8_v_229_685, 0, 0)
    _not_rtl_sBox_8_v_230_668_Y <= bits(_not_rtl_sBox_8_v_230_668, 0, 0)
    _not_rtl_sBox_8_v_230_672_Y <= bits(_not_rtl_sBox_8_v_230_672, 0, 0)
    _not_rtl_sBox_8_v_230_677_Y <= bits(_not_rtl_sBox_8_v_230_677, 0, 0)
    _or_rtl_sBox_8_v_151_799_Y <= bits(_or_rtl_sBox_8_v_151_799, 0, 0)
    _or_rtl_sBox_8_v_151_804_Y <= bits(_or_rtl_sBox_8_v_151_804, 0, 0)
    _or_rtl_sBox_8_v_227_700_Y <= bits(_or_rtl_sBox_8_v_227_700, 0, 0)
    _or_rtl_sBox_8_v_228_691_Y <= bits(_or_rtl_sBox_8_v_228_691, 0, 0)
    _or_rtl_sBox_8_v_229_682_Y <= bits(_or_rtl_sBox_8_v_229_682, 0, 0)
    _or_rtl_sBox_8_v_230_667_Y <= bits(_or_rtl_sBox_8_v_230_667, 0, 0)
    _reduce_xor_rtl_sBox_8_v_224_663_Y <= bits(_reduce_xor_rtl_sBox_8_v_224_663, 0, 0)
    _reduce_xor_rtl_sBox_8_v_224_664_Y <= bits(_reduce_xor_rtl_sBox_8_v_224_664, 0, 0)
    _ternary_rtl_sBox_8_v_315_599_Y <= bits(_ternary_rtl_sBox_8_v_315_599, 7, 0)
    _xor_rtl_sBox_8_v_222_655_Y <= bits(_xor_rtl_sBox_8_v_222_655, 0, 0)
    _xor_rtl_sBox_8_v_222_656_Y <= bits(_xor_rtl_sBox_8_v_222_656, 0, 0)
    _xor_rtl_sBox_8_v_223_659_Y <= bits(_xor_rtl_sBox_8_v_227_698, 0, 0)
    _xor_rtl_sBox_8_v_223_660_Y <= bits(_xor_rtl_sBox_8_v_227_699, 0, 0)
    _xor_rtl_sBox_8_v_227_704_Y <= bits(_xor_rtl_sBox_8_v_227_704, 0, 0)
    _xor_rtl_sBox_8_v_227_705_Y <= bits(_xor_rtl_sBox_8_v_227_705, 0, 0)
    _xor_rtl_sBox_8_v_228_689_Y <= bits(_xor_rtl_sBox_8_v_228_689, 0, 0)
    _xor_rtl_sBox_8_v_228_690_Y <= bits(_xor_rtl_sBox_8_v_228_690, 0, 0)
    _xor_rtl_sBox_8_v_228_695_Y <= bits(_xor_rtl_sBox_8_v_228_695, 0, 0)
    _xor_rtl_sBox_8_v_228_696_Y <= bits(_xor_rtl_sBox_8_v_228_696, 0, 0)
    _xor_rtl_sBox_8_v_229_680_Y <= bits(_xor_rtl_sBox_8_v_229_680, 0, 0)
    _xor_rtl_sBox_8_v_229_681_Y <= bits(_xor_rtl_sBox_8_v_229_681, 0, 0)
    _xor_rtl_sBox_8_v_229_686_Y <= bits(_xor_rtl_sBox_8_v_229_686, 0, 0)
    _xor_rtl_sBox_8_v_229_687_Y <= bits(_xor_rtl_sBox_8_v_229_687, 0, 0)
    _xor_rtl_sBox_8_v_230_673_Y <= bits(_xor_rtl_sBox_8_v_230_673, 0, 0)
    _xor_rtl_sBox_8_v_230_678_Y <= bits(_xor_rtl_sBox_8_v_230_678, 0, 0)
    _xor_rtl_sBox_8_v_261_620_Y <= bits(_xor_rtl_sBox_8_v_261_620, 0, 0)
    _xor_rtl_sBox_8_v_263_623_Y <= bits(_xor_rtl_sBox_8_v_263_623, 0, 0)
    _xor_rtl_sBox_8_v_270_630_Y <= bits(_xor_rtl_sBox_8_v_270_630, 0, 0)
    _xor_rtl_sBox_8_v_270_633_Y <= bits(_xor_rtl_sBox_8_v_270_633, 0, 0)
    _xor_rtl_sBox_8_v_270_635_Y <= bits(_xor_rtl_sBox_8_v_270_635, 0, 0)
    _xor_rtl_sBox_8_v_270_638_Y <= bits(_xor_rtl_sBox_8_v_270_638, 0, 0)
    _xor_rtl_sBox_8_v_271_642_Y <= bits(_xor_rtl_sBox_8_v_271_642, 0, 0)
    _xor_rtl_sBox_8_v_285_891_Y <= bits(_xor_rtl_sBox_8_v_285_934, 0, 0)
    _xor_rtl_sBox_8_v_286_893_Y <= bits(_xor_rtl_sBox_8_v_286_936, 0, 0)
    _xor_rtl_sBox_8_v_287_895_Y <= bits(_xor_rtl_sBox_8_v_287_938, 0, 0)
    _xor_rtl_sBox_8_v_288_897_Y <= bits(_xor_rtl_sBox_8_v_288_897, 0, 0)
    _xor_rtl_sBox_8_v_296_907_Y <= bits(_xor_rtl_sBox_8_v_296_907, 0, 0)
    _xor_rtl_sBox_8_v_296_910_Y <= bits(_xor_rtl_sBox_8_v_296_953, 0, 0)
    _xor_rtl_sBox_8_v_296_914_Y <= bits(_xor_rtl_sBox_8_v_296_957, 0, 0)
    base_new <= bits(_not_rtl_sBox_8_v_315_600, 7, 0)
    base_new_dec <= cat(bits(_not_rtl_sBox_8_v_261_621, 0, 0), cat(bits(_xor_rtl_sBox_8_v_271_645, 0, 0), cat(bits(_xor_rtl_sBox_8_v_271_644, 0, 0), cat(bits(_xor_rtl_sBox_8_v_268_629, 0, 0), cat(bits(_not_rtl_sBox_8_v_271_643, 0, 0), cat(bits(_xor_rtl_sBox_8_v_266_627, 0, 0), cat(bits(_xor_rtl_sBox_8_v_271_641, 0, 0), bits(_xor_rtl_sBox_8_v_271_640, 0, 0))))))))
    base_new_enc <= cat(bits(_not_rtl_sBox_8_v_270_639, 0, 0), cat(bits(_xor_rtl_sBox_8_v_264_625, 0, 0), cat(bits(_xor_rtl_sBox_8_v_270_637, 0, 0), cat(bits(_not_rtl_sBox_8_v_270_636, 0, 0), cat(bits(_xor_rtl_sBox_8_v_270_634, 0, 0), cat(bits(_not_rtl_sBox_8_v_270_632, 0, 0), cat(bits(_not_rtl_sBox_8_v_263_624, 0, 0), bits(_not_rtl_sBox_8_v_270_631, 0, 0))))))))
    base_new_pp <= bits(_procdff_2122, 7, 0)
    out_gf_inv8_1 <= cat(bits(_xor_rtl_sBox_8_v_206_846, 1, 0), cat(bits(_xor_rtl_sBox_8_v_206_845, 1, 0), cat(bits(_xor_rtl_sBox_8_v_206_872, 1, 0), bits(_xor_rtl_sBox_8_v_206_871, 1, 0))))
    out_gf_inv8_stage1 <= cat(bits(_xor_rtl_sBox_8_v_227_706, 0, 0), cat(bits(_xor_rtl_sBox_8_v_228_697, 0, 0), cat(bits(_xor_rtl_sBox_8_v_229_688, 0, 0), bits(_xor_rtl_sBox_8_v_230_679, 0, 0))))
    out_gf_pp <= bits(_procdff_2121, 3, 0)
    sbox_out_dec <= bits(_not_rtl_sBox_8_v_327_603, 7, 0)
    sbox_out_enc <= bits(_not_rtl_sBox_8_v_326_602, 7, 0)
  module shift_rows:
    input data_in: UInt<128>
    output data_out_dec: UInt<128>
    output data_out_enc: UInt<128>

    wire state_0_: UInt<8>
    wire state_10_: UInt<8>
    wire state_11_: UInt<8>
    wire state_12_: UInt<8>
    wire state_13_: UInt<8>
    wire state_14_: UInt<8>
    wire state_15_: UInt<8>
    wire state_1_: UInt<8>
    wire state_2_: UInt<8>
    wire state_3_: UInt<8>
    wire state_4_: UInt<8>
    wire state_5_: UInt<8>
    wire state_6_: UInt<8>
    wire state_7_: UInt<8>
    wire state_8_: UInt<8>
    wire state_9_: UInt<8>
    wire state_sft_l_0_: UInt<8>
    wire state_sft_l_10_: UInt<8>
    wire state_sft_l_11_: UInt<8>
    wire state_sft_l_12_: UInt<8>
    wire state_sft_l_13_: UInt<8>
    wire state_sft_l_14_: UInt<8>
    wire state_sft_l_15_: UInt<8>
    wire state_sft_l_1_: UInt<8>
    wire state_sft_l_2_: UInt<8>
    wire state_sft_l_3_: UInt<8>
    wire state_sft_l_4_: UInt<8>
    wire state_sft_l_5_: UInt<8>
    wire state_sft_l_6_: UInt<8>
    wire state_sft_l_7_: UInt<8>
    wire state_sft_l_8_: UInt<8>
    wire state_sft_l_9_: UInt<8>
    wire state_sft_r_0_: UInt<8>
    wire state_sft_r_10_: UInt<8>
    wire state_sft_r_11_: UInt<8>
    wire state_sft_r_12_: UInt<8>
    wire state_sft_r_13_: UInt<8>
    wire state_sft_r_14_: UInt<8>
    wire state_sft_r_15_: UInt<8>
    wire state_sft_r_1_: UInt<8>
    wire state_sft_r_2_: UInt<8>
    wire state_sft_r_3_: UInt<8>
    wire state_sft_r_4_: UInt<8>
    wire state_sft_r_5_: UInt<8>
    wire state_sft_r_6_: UInt<8>
    wire state_sft_r_7_: UInt<8>
    wire state_sft_r_8_: UInt<8>
    wire state_sft_r_9_: UInt<8>
    wire _75: UInt<128>
    wire _76: UInt<128>
    wire _77: UInt<8>
    wire _78: UInt<8>
    wire _79: UInt<8>
    wire _80: UInt<8>
    wire _81: UInt<8>
    wire _82: UInt<8>
    wire _83: UInt<8>
    wire _84: UInt<8>
    wire _85: UInt<8>
    wire _86: UInt<8>
    wire _87: UInt<8>
    wire _88: UInt<8>
    wire _89: UInt<8>
    wire _90: UInt<8>
    wire _91: UInt<8>
    wire _92: UInt<8>
    wire _93: UInt<8>
    wire _94: UInt<8>
    wire _95: UInt<8>
    wire _96: UInt<8>
    wire _97: UInt<8>
    wire _98: UInt<8>
    wire _99: UInt<8>
    wire _100: UInt<8>
    wire _101: UInt<8>
    wire _102: UInt<8>
    wire _103: UInt<8>
    wire _104: UInt<8>
    wire _105: UInt<8>
    wire _106: UInt<8>
    wire _107: UInt<8>
    wire _108: UInt<8>
    wire _109: UInt<8>
    wire _110: UInt<8>
    wire _111: UInt<8>
    wire _112: UInt<8>
    wire _113: UInt<8>
    wire _114: UInt<8>
    wire _115: UInt<8>
    wire _116: UInt<8>
    wire _117: UInt<8>
    wire _118: UInt<8>
    wire _119: UInt<8>
    wire _120: UInt<8>
    wire _121: UInt<8>
    wire _122: UInt<8>
    wire _123: UInt<8>
    wire _124: UInt<8>


    _75 <= cat(bits(data_in, 127, 120), cat(bits(data_in, 23, 16), cat(bits(data_in, 47, 40), cat(bits(data_in, 71, 64), cat(bits(data_in, 95, 88), cat(bits(data_in, 119, 112), cat(bits(data_in, 15, 8), cat(bits(data_in, 39, 32), cat(bits(data_in, 63, 56), cat(bits(data_in, 87, 80), cat(bits(data_in, 111, 104), cat(bits(data_in, 7, 0), cat(bits(data_in, 31, 24), cat(bits(data_in, 55, 48), cat(bits(data_in, 79, 72), bits(data_in, 103, 96))))))))))))))))
    _76 <= cat(bits(data_in, 127, 120), cat(bits(data_in, 87, 80), cat(bits(data_in, 47, 40), cat(bits(data_in, 7, 0), cat(bits(data_in, 95, 88), cat(bits(data_in, 55, 48), cat(bits(data_in, 15, 8), cat(bits(data_in, 103, 96), cat(bits(data_in, 63, 56), cat(bits(data_in, 23, 16), cat(bits(data_in, 111, 104), cat(bits(data_in, 71, 64), cat(bits(data_in, 31, 24), cat(bits(data_in, 119, 112), cat(bits(data_in, 79, 72), bits(data_in, 39, 32))))))))))))))))
    _77 <= bits(data_in, 127, 120)
    _78 <= bits(data_in, 47, 40)
    _79 <= bits(data_in, 15, 8)
    _80 <= bits(data_in, 103, 96)
    _81 <= bits(data_in, 71, 64)
    _82 <= bits(data_in, 39, 32)
    _83 <= bits(data_in, 7, 0)
    _84 <= bits(data_in, 95, 88)
    _85 <= bits(data_in, 63, 56)
    _86 <= bits(data_in, 31, 24)
    _87 <= bits(data_in, 119, 112)
    _88 <= bits(data_in, 87, 80)
    _89 <= bits(data_in, 55, 48)
    _90 <= bits(data_in, 23, 16)
    _91 <= bits(data_in, 111, 104)
    _92 <= bits(data_in, 79, 72)
    _93 <= bits(data_in, 127, 120)
    _94 <= bits(data_in, 111, 104)
    _95 <= bits(data_in, 79, 72)
    _96 <= bits(data_in, 7, 0)
    _97 <= bits(data_in, 103, 96)
    _98 <= bits(data_in, 71, 64)
    _99 <= bits(data_in, 39, 32)
    _100 <= bits(data_in, 95, 88)
    _101 <= bits(data_in, 63, 56)
    _102 <= bits(data_in, 31, 24)
    _103 <= bits(data_in, 87, 80)
    _104 <= bits(data_in, 55, 48)
    _105 <= bits(data_in, 23, 16)
    _106 <= bits(data_in, 119, 112)
    _107 <= bits(data_in, 47, 40)
    _108 <= bits(data_in, 15, 8)
    _109 <= bits(data_in, 127, 120)
    _110 <= bits(data_in, 111, 104)
    _111 <= bits(data_in, 79, 72)
    _112 <= bits(data_in, 71, 64)
    _113 <= bits(data_in, 39, 32)
    _114 <= bits(data_in, 7, 0)
    _115 <= bits(data_in, 103, 96)
    _116 <= bits(data_in, 95, 88)
    _117 <= bits(data_in, 63, 56)
    _118 <= bits(data_in, 31, 24)
    _119 <= bits(data_in, 23, 16)
    _120 <= bits(data_in, 119, 112)
    _121 <= bits(data_in, 87, 80)
    _122 <= bits(data_in, 55, 48)
    _123 <= bits(data_in, 47, 40)
    _124 <= bits(data_in, 15, 8)

    data_out_dec <= bits(_75, 127, 0)
    data_out_enc <= bits(_76, 127, 0)
    state_0_ <= bits(_77, 7, 0)
    state_10_ <= bits(_78, 7, 0)
    state_11_ <= bits(_79, 7, 0)
    state_12_ <= bits(_80, 7, 0)
    state_13_ <= bits(_81, 7, 0)
    state_14_ <= bits(_82, 7, 0)
    state_15_ <= bits(_83, 7, 0)
    state_1_ <= bits(_84, 7, 0)
    state_2_ <= bits(_85, 7, 0)
    state_3_ <= bits(_86, 7, 0)
    state_4_ <= bits(_87, 7, 0)
    state_5_ <= bits(_88, 7, 0)
    state_6_ <= bits(_89, 7, 0)
    state_7_ <= bits(_90, 7, 0)
    state_8_ <= bits(_91, 7, 0)
    state_9_ <= bits(_92, 7, 0)
    state_sft_l_0_ <= bits(_93, 7, 0)
    state_sft_l_10_ <= bits(_94, 7, 0)
    state_sft_l_11_ <= bits(_95, 7, 0)
    state_sft_l_12_ <= bits(_96, 7, 0)
    state_sft_l_13_ <= bits(_97, 7, 0)
    state_sft_l_14_ <= bits(_98, 7, 0)
    state_sft_l_15_ <= bits(_99, 7, 0)
    state_sft_l_1_ <= bits(_100, 7, 0)
    state_sft_l_2_ <= bits(_101, 7, 0)
    state_sft_l_3_ <= bits(_102, 7, 0)
    state_sft_l_4_ <= bits(_103, 7, 0)
    state_sft_l_5_ <= bits(_104, 7, 0)
    state_sft_l_6_ <= bits(_105, 7, 0)
    state_sft_l_7_ <= bits(_106, 7, 0)
    state_sft_l_8_ <= bits(_107, 7, 0)
    state_sft_l_9_ <= bits(_108, 7, 0)
    state_sft_r_0_ <= bits(_109, 7, 0)
    state_sft_r_10_ <= bits(_110, 7, 0)
    state_sft_r_11_ <= bits(_111, 7, 0)
    state_sft_r_12_ <= bits(_112, 7, 0)
    state_sft_r_13_ <= bits(_113, 7, 0)
    state_sft_r_14_ <= bits(_114, 7, 0)
    state_sft_r_15_ <= bits(_115, 7, 0)
    state_sft_r_1_ <= bits(_116, 7, 0)
    state_sft_r_2_ <= bits(_117, 7, 0)
    state_sft_r_3_ <= bits(_118, 7, 0)
    state_sft_r_4_ <= bits(_119, 7, 0)
    state_sft_r_5_ <= bits(_120, 7, 0)
    state_sft_r_6_ <= bits(_121, 7, 0)
    state_sft_r_7_ <= bits(_122, 7, 0)
    state_sft_r_8_ <= bits(_123, 7, 0)
    state_sft_r_9_ <= bits(_124, 7, 0)
