% fname: routing_dyad_0_6__sel_bufferlevel__topology_8x8__.m
% ./noxim -routing dyad 0.6 -sel bufferlevel -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 8 -traffic transpose1 

function [max_pir, max_throughput, min_delay] = routing_dyad_0_6__sel_bufferlevel__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
            0.007        25.8497      0.0559922            246           3587          28668
            0.007        24.3356      0.0552969            197           3537          28312
            0.007        25.7466      0.0571953            189           3662          29284
            0.007        26.3022      0.0564766            261           3614          28916
            0.007         26.083      0.0546211            173           3496          27966
            0.007        24.8916      0.0553926            154           3544          28361
            0.007        27.9753      0.0568262            279           3638          29095
            0.007        23.9755      0.0548457            167           3510          28081
            0.007        25.5283      0.0559863            191           3585          28665
            0.007        24.5885      0.0553652            205           3543          28347
            0.007        25.6994      0.0552559            226           3539          28291
            0.007        25.5981      0.0556348            201           3561          28485
            0.007        25.6053      0.0544668            296           3486          27887
            0.007        27.0821      0.0559766            189           3583          28660
            0.007         25.565      0.0559316            232           3582          28637
            0.007        26.7868      0.0556172            214           3560          28476
            0.007        25.2422      0.0556152            188           3559          28475
            0.007        25.4773      0.0579492            210           3708          29670
            0.007        25.7351       0.055334            193           3541          28331
            0.007        26.1182      0.0565664            202           3620          28962
            0.008        30.7359      0.0649629            258           4157          33261
            0.008        31.8098      0.0648965            272           4154          33227
            0.008          30.78      0.0655078            322           4191          33540
            0.008        30.4285      0.0646523            286           4135          33102
            0.008        30.4867      0.0653164            229           4181          33442
            0.008        30.3473      0.0646875            320           4140          33120
            0.008        30.7947      0.0645254            310           4131          33037
            0.008        28.8191      0.0640059            270           4096          32771
            0.008        30.3439      0.0642656            270           4115          32904
            0.008        28.0286       0.064416            251           4123          32981
            0.008        30.3571      0.0651426            247           4170          33353
            0.008        29.0327      0.0645098            220           4129          33029
            0.008        29.3085      0.0639258            233           4091          32730
            0.008        28.1302      0.0652715            269           4178          33419
            0.008        28.9582      0.0620273            408           3970          31758
            0.008         29.559      0.0621523            226           3977          31822
            0.008        27.9819      0.0639785            195           4095          32757
            0.008        30.0574       0.062957            282           4025          32234
            0.008        31.2996      0.0647129            399           4139          33133
            0.008        30.3083      0.0633105            274           4055          32415
            0.009        38.3991      0.0742676            431           4753          38025
            0.009        34.5398      0.0720664            375           4607          36898
            0.009        33.9054      0.0725176            333           4642          37129
            0.009        33.0422      0.0718652            325           4602          36795
            0.009        33.7248      0.0713926            426           4571          36553
            0.009        33.1937      0.0703418            387           4501          36015
            0.009        35.7901      0.0719355            379           4602          36831
            0.009        36.4536      0.0715391            583           4581          36628
            0.009        37.3881      0.0724453            387           4635          37092
            0.009        34.1732      0.0719453            291           4607          36836
            0.009        35.0203      0.0725352            299           4640          37138
            0.009        33.3261      0.0722383            363           4624          36986
            0.009        33.8824      0.0712187            276           4556          36464
            0.009        35.7231       0.072248            381           4623          36991
            0.009        34.6948      0.0717383            292           4593          36730
            0.009        33.4185      0.0714043            323           4569          36559
            0.009        34.4973      0.0718965            390           4599          36811
            0.009        35.7159      0.0711934            420           4555          36451
            0.009        35.9484      0.0714648            330           4572          36590
            0.009        33.5087      0.0727168            289           4651          37231
             0.01        41.3616      0.0790527            503           5055          40475
             0.01           41.1      0.0782559            481           5009          40067
             0.01        44.3177      0.0798496            375           5108          40883
             0.01        39.1318      0.0777578            347           4979          39812
             0.01        43.8014      0.0787363            515           5041          40313
             0.01         44.969      0.0807031            579           5163          41320
             0.01        48.5831      0.0819551            810           5244          41961
             0.01         43.783       0.080873            786           5175          41407
             0.01        40.9242      0.0796309            527           5095          40771
             0.01        43.0804      0.0799141            632           5112          40916
             0.01        46.6823       0.081498            468           5213          41727
             0.01         40.018      0.0789023            651           5051          40398
             0.01        47.5513      0.0803379            613           5142          41133
             0.01        39.4065      0.0804727            417           5149          41202
             0.01        41.2324      0.0803047            539           5143          41116
             0.01        38.4265      0.0805352            393           5154          41234
             0.01        46.5518      0.0814102            833           5210          41682
             0.01        51.4762      0.0807598            824           5168          41349
             0.01        40.8799      0.0797539            501           5106          40834
             0.01        42.0947      0.0800879            339           5122          41005
            0.011        47.7495      0.0861328            503           5513          44100
            0.011        54.1834      0.0876309           1020           5604          44867
            0.011        54.3224      0.0893906            941           5723          45768
            0.011        53.8283      0.0884336           1899           5660          45278
            0.011        58.2286       0.088627           1244           5674          45377
            0.011         60.713      0.0863477           1551           5527          44210
            0.011        55.5685      0.0901133            805           5764          46138
            0.011        51.4466      0.0873164            939           5585          44706
            0.011        60.5502      0.0881777            961           5642          45147
            0.011        54.1133      0.0878437           1301           5621          44976
            0.011        64.0328      0.0880273           1076           5634          45070
            0.011        55.3231      0.0884277           1041           5660          45275
            0.011        49.5314       0.087373            517           5593          44735
            0.011        52.5718      0.0865508            932           5535          44314
            0.011        51.5987       0.087123            789           5580          44607
            0.011        54.6516      0.0884902            966           5663          45307
            0.011         53.077      0.0883867            762           5660          45254
            0.011        56.2186      0.0869297           1042           5563          44508
            0.011        59.6259      0.0896738            593           5739          45913
            0.011         58.684      0.0850488           1258           5443          43545
            0.012        64.1143       0.095752           1150           6126          49025
            0.012        66.9644      0.0953164            948           6098          48802
            0.012        81.2315      0.0991641           1555           6346          50772
            0.012        54.6012      0.0934531            532           5978          47848
            0.012        64.8748      0.0953672           1194           6104          48828
            0.012        70.7129       0.093832            946           6005          48042
            0.012        88.5217      0.0990332           1764           6341          50705
            0.012        75.8196      0.0970371           1628           6209          49683
            0.012        80.2595      0.0959434           1575           6142          49123
            0.012         64.268      0.0946113           1592           6059          48441
            0.012        62.6737      0.0967441           1020           6190          49533
            0.012        64.6825      0.0962461            768           6161          49278
            0.012        62.2209      0.0955625           1063           6116          48928
            0.012        83.2309      0.0976602           1556           6250          50002
            0.012        76.1742      0.0954863           1835           6109          48889
            0.012        67.5111      0.0948027           1067           6067          48539
            0.012        67.3731      0.0964414           1083           6172          49378
            0.012        78.0663      0.0960703           1922           6152          49188
            0.012        75.2733      0.0970371           1264           6210          49683
            0.012         76.039      0.0941621           2097           6027          48211
            0.013         116.37        0.10307           2472           6597          52772
            0.013         123.95       0.105316           2794           6742          53922
            0.013        120.291       0.104047           1537           6657          53272
            0.013        92.1453       0.103014           1373           6594          52743
            0.013        124.453       0.102434           4489           6554          52446
            0.013         109.13       0.103926           1855           6651          53210
            0.013        98.1595       0.103268           1516           6609          52873
            0.013        89.2303       0.102623           1609           6569          52543
            0.013        84.3096       0.103182           1159           6599          52829
            0.013        86.4229       0.104994           1097           6721          53757
            0.013         123.53         0.1061           3192           6791          54323
            0.013        102.516       0.101834           2109           6520          52139
            0.013        108.038       0.102152           2814           6536          52302
            0.013        96.2074       0.101941           2292           6529          52194
            0.013        81.8333       0.102541           1317           6563          52501
            0.013        107.041        0.10359           2032           6632          53038
            0.013        106.316       0.102895           2327           6583          52682
            0.013        93.1973       0.101316           2736           6486          51874
            0.013        152.651       0.102641           3150           6570          52552
            0.013        117.491       0.104658           2391           6699          53585
            0.014        183.394       0.108631           4112           6952          55619
            0.014         127.48        0.11168           1711           7145          57180
            0.014        170.398       0.110371           4075           7063          56510
            0.014        239.119       0.110371           3589           7067          56510
            0.014        179.569       0.109184           3850           6985          55902
            0.014        229.283       0.108791           4746           6964          55701
            0.014        126.611       0.108098           1958           6915          55346
            0.014        241.929       0.110527           3861           7073          56590
            0.014        152.026       0.109861           2813           7031          56249
            0.014        239.053       0.111139           2316           7115          56903
            0.014        192.794       0.108365           2615           6937          55483
            0.014        162.943       0.110193           2093           7051          56419
            0.014        190.071       0.110908           3425           7097          56785
            0.014         185.86       0.108816           2975           6961          55714
            0.014        177.739       0.110045           2964           7044          56343
            0.014         236.61       0.108098           4095           6918          55346
            0.014        225.438       0.109117           3822           6983          55868
            0.014        230.662       0.110322           2680           7062          56485
            0.014        234.711        0.10832           2882           6937          55460
            0.014        174.532       0.108426           2495           6939          55514
            0.015        299.336       0.114824           5297           7346          58790
            0.015        302.283       0.113016           4965           7231          57864
            0.015        352.891       0.113486           5705           7261          58105
            0.015        306.832       0.115549           5472           7396          59161
            0.015        329.535       0.114744           5796           7345          58749
            0.015        258.502        0.11373           4912           7280          58230
            0.015        366.539        0.11101           4891           7107          56837
            0.015        388.377       0.114348           5069           7319          58546
            0.015        361.661       0.113607           6142           7272          58167
            0.015        382.767       0.113547           5355           7267          58136
            0.015        395.205       0.113434           5917           7259          58078
            0.015        339.295       0.112637           5794           7212          57670
            0.015        277.079       0.113166           3691           7241          57941
            0.015        341.938        0.11358           4753           7267          58153
            0.015        421.424       0.111219           7025           7119          56944
            0.015        320.161       0.114141           5975           7306          58440
            0.015        301.644       0.115187           3427           7371          58976
            0.015        361.459       0.114428           4011           7321          58587
            0.015        355.859        0.11474           5436           7347          58747
            0.015        320.244       0.115115           5046           7367          58939
            0.016        494.039       0.116703           6514           7470          59752
            0.016        428.749       0.117658           6364           7531          60241
            0.016        464.477       0.117652           5936           7531          60238
            0.016        426.612       0.117021           5219           7492          59915
            0.016        452.961       0.116299           5054           7438          59545
            0.016        508.768       0.114225           5706           7310          58483
            0.016        398.285       0.117332           5842           7510          60074
            0.016        443.372       0.118795           6954           7605          60823
            0.016        426.335       0.117082           6030           7492          59946
            0.016        376.386       0.119834           5219           7671          61355
            0.016        422.289       0.115219           5557           7372          58992
            0.016        495.648       0.118695           5442           7603          60772
            0.016        532.237       0.115396           6341           7386          59083
            0.016        424.808       0.117213           5610           7500          60013
            0.016        405.039       0.119824           5824           7670          61350
            0.016        369.932        0.11523           5711           7372          58998
            0.016        451.511       0.120027           4505           7685          61454
            0.016        436.971       0.117828           5485           7543          60328
            0.016        356.039       0.118602           4576           7592          60724
            0.016        453.935       0.116244           5333           7441          59517
];

rows = size(data, 1);
cols = size(data, 2);

data_delay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+1);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_delay = [data_delay; data(ifirst, 1:cols-5), avg ci];
end

figure(1);
hold on;
plot(data_delay(:,1), data_delay(:,2), symbol);

data_throughput = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+2);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_throughput = [data_throughput; data(ifirst, 1:cols-5), avg ci];
end

figure(2);
hold on;
plot(data_throughput(:,1), data_throughput(:,2), symbol);

data_maxdelay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+3);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_maxdelay = [data_maxdelay; data(ifirst, 1:cols-5), avg ci];
end

figure(3);
hold on;
plot(data_maxdelay(:,1), data_maxdelay(:,2), symbol);


%-------- Saturation Analysis -----------
slope=[];
for i=2:size(data_throughput,1),
    slope(i-1) = (data_throughput(i,2)-data_throughput(i-1,2))/(data_throughput(i,1)-data_throughput(i-1,1));
end

for i=2:size(slope,2),
    if slope(i) < (0.95*mean(slope(1:i)))
        max_pir = data_throughput(i, 1);
        max_throughput = data_throughput(i, 2);
        min_delay = data_delay(i, 2);
        break;
    end
end