.class Lorg/lasque/tusdk/core/audio/processer/AudioResampler;
.super Ljava/lang/Object;


# static fields
.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[[D


# instance fields
.field private a:Ljava/nio/ByteOrder;

.field private b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

.field private c:D

.field private d:D

.field private e:I

.field private j:[[D

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[D

.field private p:I

.field private q:Z

.field private r:I

.field private s:J

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->f:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->g:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->h:[I

    new-array v0, v0, [[D

    const/4 v1, 0x1

    new-array v2, v1, [D

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    aput-wide v4, v2, v3

    aput-object v2, v0, v3

    const/16 v2, 0x10

    new-array v3, v2, [D

    fill-array-data v3, :array_3

    aput-object v3, v0, v1

    const/16 v1, 0x14

    new-array v1, v1, [D

    fill-array-data v1, :array_4

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-array v1, v2, [D

    fill-array-data v1, :array_5

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-array v1, v2, [D

    fill-array-data v1, :array_6

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/16 v1, 0xf

    new-array v3, v1, [D

    fill-array-data v3, :array_7

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-array v2, v2, [D

    fill-array-data v2, :array_8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [D

    fill-array-data v1, :array_9

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->i:[[D

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xbb80
        0xac44
        0x93a8
        0x7d00
        0x5622
        0xbb80
        0xac44
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x10
        0x14
        0x10
        0x10
        0xf
        0x10
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x12
        0x1b
        0x8
        0x8
        0x8
        0xa
        0x9
    .end array-data

    :array_3
    .array-data 8
        -0x3ff905fea0000000L    # -2.87207293510437
        0x40142a50a0000000L    # 5.041323184967041
        -0x3fe705d660000000L    # -6.244299411773682
        0x401764c2a0000000L    # 5.848398685455322
        -0x3ff2589140000000L    # -3.706754207611084
        0x3ff0cacd00000000L    # 1.0495119094848633
        0x3ff2edaa40000000L    # 1.1830236911773682
        -0x3fff193ba0000000L    # -2.1126792430877686
        0x3ffe8d1ec0000000L    # 1.9094531536102295
        -0x4010071ec0000000L    # -0.9991308450698853
        0x3fc5e050c0000000L    # 0.17090806365013123
        0x3fd4dfbd80000000L    # 0.32615602016448975
        -0x4026f553a0000000L    # -0.39127644896507263
        0x3fd1337080000000L    # 0.2687646150588989
        -0x4046feb2e0000000L    # -0.0976761057972908
        0x3f98098720000000L    # 0.023473845794796944
    .end array-data

    :array_4
    .array-data 8
        -0x3ffa94d960000000L    # -2.6773197650909424
        0x401352d580000000L    # 4.830892562866211
        -0x3fe5b83500000000L    # -6.570110321044922
        0x401dd42ca0000000L    # 7.4572014808654785
        -0x3fe5183da0000000L    # -6.726327419281006
        0x4013648560000000L    # 4.848165035247803
        -0x3fffab9aa0000000L    # -2.0412089824676514
        -0x4019946400000000L    # -0.7006359100341797
        0x4007a14b20000000L    # 2.95375657081604
        -0x3fefae0a60000000L    # -4.080038547515869
        0x4010bcf340000000L    # 4.184521675109863
        -0x3ff559bda0000000L    # -3.331181287765503
        0x4000f1a620000000L    # 2.117992639541626
        -0x4013dcc000000000L    # -0.879302978515625
        0x3fa042bc20000000L    # 0.031759146600961685
        0x3fdb1fff00000000L    # 0.4238278865814209
        -0x40215aff00000000L    # -0.4788210391998291
        0x3fd6b6d0a0000000L    # 0.35490813851356506
        -0x40399aa2c0000000L    # -0.1749683916568756
        0x3faf2f5b00000000L    # 0.06090816855430603
    .end array-data

    :array_5
    .array-data 8
        -0x4005dcc700000000L    # -1.6335992813110352
        0x400217a720000000L    # 2.261549234390259
        -0x3ffcbd0640000000L    # -2.407702922821045
        0x400512c8a0000000L    # 2.634171724319458
        -0x3ffed90380000000L    # -2.144036293029785
        0x3ffd0b9320000000L    # 1.8153258562088013
        -0x400eb1aca0000000L    # -1.0816224813461304
        0x3fe67f3180000000L    # 0.703026533126831
        -0x403b87be60000000L    # -0.15991993248462677
        -0x405aba0580000000L    # -0.04154951870441437
        0x3fd2d39ca0000000L    # 0.2941657602787018
        -0x402fe1fd60000000L    # -0.25183168053627014
        0x3fd1c54280000000L    # 0.27766478061676025
        -0x403bcb7060000000L    # -0.15785403549671173
        0x3fba065200000000L    # 0.10165894031524658
        -0x406ec318a0000000L    # -0.016833892092108727
    .end array-data

    :array_6
    .array-data 8
        -0x401578b9c0000000L    # -0.8290129899978638
        0x3fefa7be80000000L    # 0.9892265796661377
        -0x401cdb13e0000000L    # -0.5982571244239807
        0x3ff00bcce0000000L    # 1.0028809309005737
        -0x401cd1dc80000000L    # -0.5993821620941162
        0x3fe970d740000000L    # 0.7950245141983032
        -0x4024a83640000000L    # -0.42723315954208374
        0x3fe1700720000000L    # 0.5449252724647522
        -0x402c4af080000000L    # -0.3079260587692261
        0x3fd7991360000000L    # 0.3687179982662201
        -0x4037f238c0000000L    # -0.187920480966568
        0x3fccf142e0000000L    # 0.2261127084493637
        -0x4044eea7a0000000L    # -0.10573341697454453
        0x3fbd465d00000000L
        -0x405c225140000000L    # -0.0388006791472435
        0x3fa4e944c0000000L    # 0.040842197835445404
    .end array-data

    :array_7
    .array-data 8
        -0x404f4d16a0000000L    # -0.06522997468709946
        0x3fe19810a0000000L    # 0.5498126149177551
        0x3fd9c73cc0000000L    # 0.4027854800224304
        0x3fd45773e0000000L    # 0.3178376853466034
        0x3fd20c9520000000L    # 0.2820179760456085
        0x3fc5bdb560000000L    # 0.16985194385051727
        0x3fc3c13460000000L    # 0.15433363616466522
        0x3fc0025700000000L    # 0.12507140636444092
        0x3fb6cb4a20000000L    # 0.08903945237398148
        0x3fb07d2e80000000L    # 0.06441012024879456
        0x3fa8238560000000L    # 0.04714600369334221
        0x3fa0cbd920000000L    # 0.03280523791909218
        0x3f9d2dd820000000L    # 0.028495194390416145
        0x3f87f38d20000000L    # 0.011695005930960178
        0x3f883b4a80000000L    # 0.011831838637590408
    .end array-data

    :array_8
    .array-data 8
        -0x3ffcdc0060000000L    # -2.3925774097442627
        0x400b7af0e0000000L    # 3.4350297451019287
        -0x3ff6845c40000000L    # -3.185370922088623
        0x3ffcfcd5a0000000L    # 1.8117271661758423
        0x3fc9c27c20000000L    # 0.2012477070093155
        -0x4008625780000000L    # -1.4759907722473145
        0x3ffb899620000000L    # 1.7210904359817505
        -0x4010b89720000000L    # -0.9774670004844666
        0x3fc1a6c0a0000000L    # 0.13790138065814972
        0x3fd87060e0000000L    # 0.38185903429985046
        -0x402e734dc0000000L    # -0.27421241998672485
        -0x404ef45640000000L    # -0.06658421456813812
        0x3fd68afc60000000L    # 0.35223302245140076
        -0x4027e3c360000000L    # -0.37672343850135803
        0x3fceac9d40000000L    # 0.23964276909828186
        -0x404e6b53a0000000L    # -0.06867482513189316
    .end array-data

    :array_9
    .array-data 8
        -0x3fff5536c0000000L    # -2.0833916664123535
        0x400855b2e0000000L    # 3.0418450832366943
        -0x3ff65c9720000000L    # -3.204789876937866
        0x40060ebb00000000L    # 2.757192611694336
        -0x400808c0c0000000L    # -1.4978630542755127
        0x3fd5efc560000000L    # 0.34275946021080017
        0x3fe6f46dc0000000L    # 0.7173374891281128
        -0x400ed219e0000000L    # -1.073705792427063
        0x3ff05c7e80000000L    # 1.0225815773010254
        -0x401ddf3b80000000L    # -0.5664999485015869
        0x3fcad70560000000L    # 0.20968692004680634
        0x3fb0bca5c0000000L    # 0.06537853181362152
        -0x4045931640000000L    # -0.10322438180446625
        0x3fb143e160000000L    # 0.06744202226400375
        0x3f74488540000000L    # 0.00495197344571352
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;IIIIIIDIZ)V
    .locals 20

    move-object/from16 v13, p0

    move/from16 v9, p3

    move/from16 v10, p5

    move-wide/from16 v11, p9

    move/from16 v0, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    new-instance v1, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;-><init>()V

    iput-object v1, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const-wide v1, 0x4065400000000000L    # 170.0

    iput-wide v1, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->c:D

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iput-wide v1, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d:D

    const/high16 v1, 0x10000

    iput v1, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->e:I

    const/4 v14, 0x0

    iput-boolean v14, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->q:Z

    const/4 v1, 0x1

    new-array v15, v1, [D

    const-wide/16 v2, 0x0

    aput-wide v2, v15, v14

    if-ltz v0, :cond_f

    const/4 v2, 0x4

    if-gt v0, v2, :cond_f

    move/from16 v3, p12

    iput-boolean v3, v13, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->q:Z

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v10, v1, :cond_1

    if-eq v10, v3, :cond_1

    if-eq v10, v4, :cond_1

    if-ne v10, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error : Only 8bit, 16bit, 24bit and 32bit PCM are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v5, -0x1

    move/from16 v6, p6

    if-ne v6, v5, :cond_3

    if-eq v10, v1, :cond_2

    move v6, v10

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-ne v6, v2, :cond_3

    move/from16 v6, p4

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v6

    move/from16 v6, p4

    :goto_2
    if-ne v6, v5, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    if-ne v0, v5, :cond_7

    if-ge v7, v10, :cond_6

    if-ne v7, v1, :cond_5

    move/from16 v16, v2

    goto :goto_4

    :cond_5
    move/from16 v16, v4

    goto :goto_4

    :cond_6
    move/from16 v16, v1

    goto :goto_4

    :cond_7
    move/from16 v16, v0

    :goto_4
    if-eqz v16, :cond_c

    if-ne v7, v1, :cond_8

    const/16 v0, -0x80

    const/16 v1, 0x7f

    goto :goto_5

    :cond_8
    move v0, v14

    move v1, v0

    :goto_5
    if-ne v7, v3, :cond_9

    const/16 v0, -0x8000

    const/16 v1, 0x7fff

    :cond_9
    if-ne v7, v4, :cond_a

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const v1, 0x7fffff

    :cond_a
    if-ne v7, v2, :cond_b

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    :cond_b
    move v3, v0

    move v4, v1

    const/4 v6, 0x0

    const-wide v17, 0x3fc70a3d70a3d70aL    # 0.18

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, p7

    move/from16 v5, v16

    move/from16 v19, v7

    move v14, v8

    move-wide/from16 v7, v17

    invoke-direct/range {v0 .. v8}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(IIIIIID)I

    goto :goto_6

    :cond_c
    move/from16 v19, v7

    move v14, v8

    :goto_6
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    if-ge v9, v14, :cond_d

    neg-double v4, v11

    div-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-int v0, p8, v10

    div-int v17, v0, p7

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move/from16 v4, p5

    move/from16 v5, v19

    move/from16 v6, p3

    move v7, v14

    move-wide v8, v11

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IIIIIDIZI)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v15, v2

    goto :goto_7

    :cond_d
    if-le v9, v14, :cond_e

    neg-double v4, v11

    div-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-int v0, p8, v10

    div-int v17, v0, p7

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    move/from16 v4, p5

    move/from16 v5, v19

    move/from16 v6, p3

    move v7, v14

    move-wide v8, v11

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IIIIIDIZI)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v15, v2

    :cond_e
    :goto_7
    return-void

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized dither type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(DIDD)D
    .locals 4

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    int-to-double p1, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v2

    mul-double/2addr p1, p1

    div-double/2addr v0, p1

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    mul-double/2addr p4, p1

    invoke-static {p4, p5}, Lorg/lasque/tusdk/core/audio/processer/AudioBessel;->value(D)D

    move-result-wide p1

    div-double/2addr p1, p6

    return-wide p1
.end method

.method private a(IDD)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p4

    const-wide p4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr p4, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p2, v2

    mul-double/2addr p2, v0

    int-to-double v2, p1

    mul-double/2addr v2, p4

    mul-double/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->c(D)D

    move-result-wide p4

    mul-double/2addr p2, p4

    return-wide p2
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;IIIIIDIZI)D
    .locals 68

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    const/4 v13, 0x1

    new-array v14, v13, [D

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    aput-wide v15, v14, v6

    iget v7, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->e:I

    iget-wide v0, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->c:D

    invoke-direct {v8, v11, v12}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(II)I

    move-result v2

    div-int v17, v11, v2

    mul-int v4, v17, v12

    div-int v2, v4, v12

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    if-ne v2, v13, :cond_0

    move/from16 v22, v13

    goto :goto_0

    :cond_0
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    move/from16 v22, v21

    goto :goto_0

    :cond_1
    rem-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_44

    move/from16 v22, v20

    :goto_0
    mul-int v3, v12, v22

    div-int/lit8 v2, v3, 0x2

    div-int/lit8 v5, v11, 0x2

    sub-int/2addr v2, v5

    mul-int/lit8 v15, v2, 0x2

    move/from16 v26, v7

    int-to-double v6, v15

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    div-double v6, v6, v27

    move-object/from16 v29, v14

    int-to-double v13, v5

    int-to-double v9, v2

    div-double v9, v9, v27

    add-double/2addr v9, v13

    const-wide/high16 v30, 0x4035000000000000L    # 21.0

    cmpg-double v2, v0, v30

    const-wide v32, 0x401fcccccccccccdL    # 7.95

    if-gtz v2, :cond_2

    const-wide v34, 0x3fed82a9930be0dfL    # 0.9222

    goto :goto_1

    :cond_2
    sub-double v34, v0, v32

    const-wide v36, 0x402cb851eb851eb8L    # 14.36

    div-double v34, v34, v36

    :goto_1
    move-wide/from16 v36, v13

    int-to-double v12, v4

    div-double v5, v12, v6

    mul-double v5, v5, v34

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v14

    double-to-int v5, v5

    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    move/from16 v34, v5

    invoke-direct {v8, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b(D)D

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Lorg/lasque/tusdk/core/audio/processer/AudioBessel;->value(D)D

    move-result-wide v40

    div-int v6, v4, v11

    div-int v0, v34, v6

    const/4 v1, 0x1

    add-int/lit8 v7, v0, 0x1

    mul-int v5, v6, v22

    new-array v1, v5, [I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_5

    div-int v2, v4, v3

    mul-int/2addr v2, v0

    rem-int/2addr v2, v6

    sub-int v2, v6, v2

    aput v2, v1, v0

    aget v2, v1, v0

    if-ne v2, v6, :cond_4

    const/4 v2, 0x0

    aput v2, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    new-array v2, v5, [I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_8

    aget v14, v1, v0

    div-int v15, v4, v3

    if-ge v14, v15, :cond_6

    move/from16 v14, p3

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    aput v14, v2, v0

    aget v14, v1, v0

    if-ne v14, v6, :cond_7

    const/4 v14, 0x0

    aput v14, v1, v0

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_8
    const/4 v14, 0x0

    filled-new-array {v6, v7}, [I

    move-result-object v0

    const-class v15, D

    invoke-static {v15, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [[D

    div-int/lit8 v0, v34, 0x2

    neg-int v14, v0

    :goto_6
    if-gt v14, v0, :cond_9

    add-int v44, v14, v0

    rem-int v45, v44, v6

    aget-object v45, v15, v45

    div-int v44, v44, v6

    move-object/from16 v46, v1

    move-object/from16 v47, v2

    int-to-double v1, v14

    move/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v49, v15

    move v15, v3

    move/from16 v3, v34

    move/from16 v23, v4

    move/from16 v50, v5

    move-wide/from16 v4, v38

    move/from16 v52, v7

    move/from16 v16, v26

    move/from16 v26, v6

    move-wide/from16 v6, v40

    invoke-direct/range {v0 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(DIDD)D

    move-result-wide v6

    move v1, v14

    move-wide v2, v9

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(IDD)D

    move-result-wide v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v12

    int-to-double v0, v11

    div-double/2addr v6, v0

    aput-wide v6, v45, v44

    add-int/lit8 v14, v14, 0x1

    move v3, v15

    move/from16 v4, v23

    move/from16 v6, v26

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    move/from16 v0, v48

    move-object/from16 v15, v49

    move/from16 v5, v50

    move/from16 v7, v52

    move/from16 v26, v16

    goto :goto_6

    :cond_9
    move/from16 v48, v0

    move-object/from16 v46, v1

    move-object/from16 v47, v2

    move/from16 v23, v4

    move/from16 v50, v5

    move/from16 v52, v7

    move-object/from16 v49, v15

    move/from16 v16, v26

    move v15, v3

    move/from16 v26, v6

    iget-wide v0, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->c:D

    cmpg-double v2, v0, v30

    if-gtz v2, :cond_a

    const-wide v2, 0x3fed82a9930be0dfL    # 0.9222

    goto :goto_7

    :cond_a
    sub-double v2, v0, v32

    const-wide v4, 0x402cb851eb851eb8L    # 14.36

    div-double/2addr v2, v4

    :goto_7
    move-wide v3, v2

    const/4 v2, 0x1

    :goto_8
    mul-int v7, v16, v2

    rem-int/lit8 v5, v7, 0x2

    if-nez v5, :cond_b

    add-int/lit8 v7, v7, -0x1

    :cond_b
    move v9, v7

    int-to-double v12, v15

    mul-double v5, v12, v3

    add-int/lit8 v7, v9, -0x1

    move-wide/from16 v30, v3

    int-to-double v3, v7

    div-double/2addr v5, v3

    iget-wide v3, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d:D

    cmpg-double v3, v5, v3

    if-gez v3, :cond_43

    invoke-direct {v8, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b(D)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Lorg/lasque/tusdk/core/audio/processer/AudioBessel;->value(D)D

    move-result-wide v32

    const/4 v0, 0x1

    :goto_9
    if-ge v0, v9, :cond_c

    mul-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_c
    mul-int/lit8 v10, v0, 0x2

    new-array v14, v10, [D

    div-int/lit8 v6, v9, 0x2

    neg-int v0, v6

    move v7, v0

    :goto_a
    if-gt v7, v6, :cond_d

    add-int v16, v7, v6

    int-to-double v1, v7

    move-object/from16 v0, p0

    move v3, v9

    move-wide/from16 v4, v30

    move/from16 v34, v6

    move/from16 v38, v7

    move-wide/from16 v6, v32

    invoke-direct/range {v0 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(DIDD)D

    move-result-wide v6

    move/from16 v1, v38

    move-wide/from16 v2, v36

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(IDD)D

    move-result-wide v0

    mul-double/2addr v6, v0

    int-to-double v0, v10

    div-double/2addr v6, v0

    mul-double v6, v6, v27

    aput-wide v6, v14, v16

    add-int/lit8 v7, v38, 0x1

    move/from16 v6, v34

    goto :goto_a

    :cond_d
    move/from16 v38, v7

    int-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double v0, v0, v27

    double-to-int v0, v0

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v0, v7, v0

    div-int/lit8 v6, v10, 0x2

    new-array v5, v6, [D

    iget-object v1, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const/4 v3, 0x1

    move v2, v10

    move-object v4, v14

    move-object/from16 v32, v5

    move-object v5, v7

    move v0, v6

    move-object/from16 v6, v32

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->rdft(II[D[I[D)V

    invoke-direct/range {p0 .. p0}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a()V

    div-int v6, v0, v22

    const/4 v1, 0x1

    add-int/2addr v6, v1

    move/from16 v5, p3

    filled-new-array {v5, v6}, [I

    move-result-object v2

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, [[D

    filled-new-array {v5, v10}, [I

    move-result-object v2

    const-class v3, D

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, [[D

    move/from16 v4, v52

    add-int v2, v0, v4

    mul-int/2addr v2, v5

    mul-int v3, v2, p4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    mul-int/2addr v6, v5

    mul-int v16, v6, p5

    move-object/from16 v30, v3

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-array v2, v2, [D

    new-array v6, v6, [D

    div-int v16, v48, v26

    const/4 v1, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v31, v2

    int-to-double v1, v9

    div-double v1, v1, v27

    move/from16 v9, p7

    div-int/2addr v15, v9

    move-object/from16 v39, v14

    int-to-double v14, v15

    div-double/2addr v1, v14

    double-to-int v1, v1

    move/from16 v14, p10

    move/from16 v55, v1

    move-object/from16 v45, v6

    move-object/from16 v44, v7

    move/from16 v1, v16

    move-object/from16 v15, v30

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v30, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v54, 0x0

    :goto_b
    int-to-double v6, v0

    move-object/from16 v56, v3

    move/from16 v52, v4

    int-to-double v3, v11

    mul-double/2addr v6, v3

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v42

    move-wide/from16 v57, v3

    move-wide/from16 v59, v12

    move/from16 v3, v52

    int-to-double v12, v3

    add-double/2addr v6, v12

    int-to-double v12, v1

    sub-double/2addr v6, v12

    double-to-int v4, v6

    add-int v6, v4, v2

    if-le v6, v14, :cond_e

    sub-int v6, v14, v2

    goto :goto_c

    :cond_e
    move v6, v4

    :goto_c
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    mul-int v12, p4, v5

    mul-int/2addr v6, v12

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v6, v6, [B

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-gez v13, :cond_f

    const/4 v13, 0x0

    :cond_f
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-ge v13, v7, :cond_10

    div-int v7, v13, p4

    mul-int/2addr v7, v5

    add-int/2addr v7, v2

    move v14, v7

    :cond_10
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    div-int/2addr v13, v12

    packed-switch p4, :pswitch_data_0

    move/from16 v6, v38

    goto/16 :goto_11

    :pswitch_0
    const/4 v6, 0x0

    :goto_d
    mul-int v12, v13, v5

    if-ge v6, v12, :cond_11

    iget-object v12, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    mul-int v38, v5, v1

    add-int v38, v38, v6

    const-wide v61, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v7, v12

    mul-double v7, v7, v61

    aput-wide v7, v31, v38

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, p0

    goto :goto_d

    :pswitch_1
    const/4 v6, 0x0

    :goto_e
    mul-int v7, v13, v5

    if-ge v6, v7, :cond_11

    mul-int v7, v5, v1

    add-int/2addr v7, v6

    const-wide v61, 0x3e80000020000040L    # 1.1920930376163766E-7

    mul-int/lit8 v8, v6, 0x3

    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    const/16 v38, 0x0

    shl-int/lit8 v12, v12, 0x0

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v38, 0x8

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v12

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    int-to-double v8, v8

    mul-double v8, v8, v61

    aput-wide v8, v31, v7

    add-int/lit8 v6, v6, 0x1

    move/from16 v9, p7

    goto :goto_e

    :pswitch_2
    const/4 v6, 0x0

    :goto_f
    mul-int v7, v13, v5

    if-ge v6, v7, :cond_11

    move-object/from16 v7, p0

    iget-object v8, v7, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v15, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v8

    mul-int v9, v5, v1

    add-int/2addr v9, v6

    const-wide v61, 0x3f00002000400080L    # 3.051850947599719E-5

    int-to-double v7, v8

    mul-double v7, v7, v61

    aput-wide v7, v31, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :pswitch_3
    const/4 v6, 0x0

    :goto_10
    mul-int v7, v13, v5

    if-ge v6, v7, :cond_11

    mul-int v7, v5, v1

    add-int/2addr v7, v6

    invoke-virtual {v15, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    int-to-double v8, v12

    const-wide/high16 v63, 0x4060000000000000L    # 128.0

    sub-double v8, v8, v63

    const-wide v61, 0x3f80204081020408L    # 0.007874015748031496

    mul-double v8, v8, v61

    aput-wide v8, v31, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_11
    :goto_11
    mul-int v7, v5, v4

    if-ge v6, v7, :cond_12

    mul-int v7, v5, v1

    add-int/2addr v7, v6

    const-wide/16 v8, 0x0

    aput-wide v8, v31, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_12
    add-int v7, v1, v4

    add-int v8, v2, v13

    if-lt v8, v14, :cond_13

    const/4 v9, 0x1

    goto :goto_12

    :cond_13
    const/4 v9, 0x0

    :goto_12
    add-int/lit8 v1, v16, -0x1

    mul-int/2addr v1, v11

    add-int v1, v1, v23

    div-int v1, v1, v23

    mul-int v12, v1, v5

    move v1, v6

    move/from16 v38, v30

    move/from16 v6, v40

    const/4 v13, 0x0

    move/from16 v40, v36

    :goto_13
    const/4 v4, 0x7

    if-ge v13, v5, :cond_21

    add-int v1, v12, v13

    if-eq v3, v4, :cond_1a

    const/16 v2, 0x9

    if-eq v3, v2, :cond_17

    move v2, v1

    move/from16 v4, v30

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_16

    aget v6, v46, v4

    move/from16 v38, v2

    const/4 v11, 0x0

    const-wide/16 v61, 0x0

    :goto_15
    if-ge v11, v3, :cond_14

    aget-object v40, v49, v6

    aget-wide v63, v40, v11

    aget-wide v65, v31, v38

    mul-double v63, v63, v65

    add-double v61, v61, v63

    add-int v38, v38, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_14
    aget-object v6, v34, v13

    aput-wide v61, v6, v1

    aget v6, v47, v4

    add-int/2addr v2, v6

    add-int/lit8 v6, v4, 0x1

    move/from16 v11, v50

    if-ne v6, v11, :cond_15

    const/4 v4, 0x0

    goto :goto_16

    :cond_15
    move v4, v6

    :goto_16
    add-int/lit8 v1, v1, 0x1

    move/from16 v50, v11

    move/from16 v11, p6

    goto :goto_14

    :cond_16
    move/from16 v11, v50

    move/from16 v52, v3

    move/from16 v38, v4

    const/4 v3, 0x6

    goto/16 :goto_1b

    :cond_17
    move/from16 v11, v50

    move v6, v1

    move/from16 v2, v30

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_19

    aget v38, v46, v2

    aget-object v40, v34, v13

    aget-object v48, v49, v38

    const/16 v50, 0x0

    aget-wide v61, v48, v50

    mul-int/lit8 v48, v5, 0x0

    add-int v48, v6, v48

    aget-wide v63, v31, v48

    mul-double v61, v61, v63

    aget-object v48, v49, v38

    const/16 v35, 0x1

    aget-wide v63, v48, v35

    mul-int/lit8 v48, v5, 0x1

    add-int v48, v6, v48

    aget-wide v65, v31, v48

    mul-double v63, v63, v65

    add-double v61, v61, v63

    aget-object v48, v49, v38

    aget-wide v63, v48, v21

    mul-int/lit8 v48, v5, 0x2

    add-int v48, v6, v48

    aget-wide v65, v31, v48

    mul-double v63, v63, v65

    add-double v61, v61, v63

    aget-object v48, v49, v38

    aget-wide v63, v48, v20

    mul-int/lit8 v48, v5, 0x3

    add-int v48, v6, v48

    aget-wide v65, v31, v48

    mul-double v63, v63, v65

    add-double v61, v61, v63

    aget-object v48, v49, v38

    aget-wide v63, v48, v19

    mul-int/lit8 v48, v5, 0x4

    add-int v48, v6, v48

    aget-wide v65, v31, v48

    mul-double v63, v63, v65

    add-double v61, v61, v63

    aget-object v48, v49, v38

    aget-wide v63, v48, v18

    mul-int/lit8 v48, v5, 0x5

    add-int v48, v6, v48

    aget-wide v65, v31, v48

    mul-double v63, v63, v65

    add-double v61, v61, v63

    aget-object v48, v49, v38

    move/from16 v52, v3

    const/4 v3, 0x6

    aget-wide v50, v48, v3

    mul-int/lit8 v48, v5, 0x6

    add-int v48, v6, v48

    aget-wide v63, v31, v48

    mul-double v50, v50, v63

    add-double v61, v61, v50

    aget-object v48, v49, v38

    aget-wide v50, v48, v4

    mul-int/lit8 v48, v5, 0x7

    add-int v48, v6, v48

    aget-wide v63, v31, v48

    mul-double v50, v50, v63

    add-double v61, v61, v50

    aget-object v38, v49, v38

    const/16 v48, 0x8

    aget-wide v50, v38, v48

    mul-int/lit8 v38, v5, 0x8

    add-int v38, v6, v38

    aget-wide v63, v31, v38

    mul-double v50, v50, v63

    add-double v61, v61, v50

    aput-wide v61, v40, v1

    aget v38, v47, v2

    add-int v6, v6, v38

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v11, :cond_18

    const/4 v2, 0x0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v52

    goto/16 :goto_17

    :cond_19
    move/from16 v52, v3

    const/4 v3, 0x6

    goto/16 :goto_1a

    :cond_1a
    move/from16 v52, v3

    move/from16 v11, v50

    const/4 v3, 0x6

    move v4, v1

    move/from16 v2, v30

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_1c

    aget v6, v46, v2

    aget-object v38, v34, v13

    aget-object v40, v49, v6

    const/16 v48, 0x0

    aget-wide v50, v40, v48

    mul-int/lit8 v40, v5, 0x0

    add-int v40, v4, v40

    aget-wide v61, v31, v40

    mul-double v50, v50, v61

    aget-object v40, v49, v6

    const/16 v35, 0x1

    aget-wide v61, v40, v35

    mul-int/lit8 v40, v5, 0x1

    add-int v40, v4, v40

    aget-wide v63, v31, v40

    mul-double v61, v61, v63

    add-double v50, v50, v61

    aget-object v40, v49, v6

    aget-wide v61, v40, v21

    mul-int/lit8 v40, v5, 0x2

    add-int v40, v4, v40

    aget-wide v63, v31, v40

    mul-double v61, v61, v63

    add-double v50, v50, v61

    aget-object v40, v49, v6

    aget-wide v61, v40, v20

    mul-int/lit8 v40, v5, 0x3

    add-int v40, v4, v40

    aget-wide v63, v31, v40

    mul-double v61, v61, v63

    add-double v50, v50, v61

    aget-object v40, v49, v6

    aget-wide v61, v40, v19

    mul-int/lit8 v40, v5, 0x4

    add-int v40, v4, v40

    aget-wide v63, v31, v40

    mul-double v61, v61, v63

    add-double v50, v50, v61

    aget-object v40, v49, v6

    aget-wide v61, v40, v18

    mul-int/lit8 v40, v5, 0x5

    add-int v40, v4, v40

    aget-wide v63, v31, v40

    mul-double v61, v61, v63

    add-double v50, v50, v61

    aget-object v6, v49, v6

    aget-wide v61, v6, v3

    mul-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v4

    aget-wide v63, v31, v6

    mul-double v61, v61, v63

    add-double v50, v50, v61

    aput-wide v50, v38, v1

    aget v6, v47, v2

    add-int/2addr v4, v6

    add-int/lit8 v6, v2, 0x1

    if-ne v6, v11, :cond_1b

    const/4 v2, 0x0

    goto :goto_19

    :cond_1b
    move v2, v6

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_1c
    :goto_1a
    move/from16 v38, v2

    :goto_1b
    move v1, v0

    :goto_1c
    if-ge v1, v10, :cond_1d

    aget-object v2, v34, v13

    const-wide/16 v24, 0x0

    aput-wide v24, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1d
    move-object/from16 v6, p0

    iget-object v1, v6, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const/4 v4, 0x1

    aget-object v40, v34, v13

    move/from16 v50, v11

    move-object/from16 v11, v31

    move v2, v10

    move/from16 v48, v12

    move/from16 v31, v52

    move-wide/from16 v51, v57

    move v12, v3

    move v3, v4

    move/from16 v57, v31

    move-object/from16 v4, v40

    move v12, v5

    move-object/from16 v5, v44

    move-object/from16 v31, v15

    move-object v15, v6

    move-object/from16 v6, v32

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->rdft(II[D[I[D)V

    aget-object v1, v34, v13

    const/4 v2, 0x0

    aget-wide v3, v39, v2

    aget-object v5, v34, v13

    aget-wide v61, v5, v2

    mul-double v3, v3, v61

    aput-wide v3, v1, v2

    aget-object v1, v34, v13

    const/4 v2, 0x1

    aget-wide v3, v39, v2

    aget-object v5, v34, v13

    aget-wide v61, v5, v2

    mul-double v3, v3, v61

    aput-wide v3, v1, v2

    const/4 v1, 0x1

    :goto_1d
    if-ge v1, v0, :cond_1e

    mul-int/lit8 v2, v1, 0x2

    aget-wide v3, v39, v2

    aget-object v5, v34, v13

    aget-wide v61, v5, v2

    mul-double v3, v3, v61

    add-int/lit8 v5, v2, 0x1

    aget-wide v61, v39, v5

    aget-object v6, v34, v13

    aget-wide v63, v6, v5

    mul-double v61, v61, v63

    sub-double v3, v3, v61

    aget-wide v61, v39, v5

    aget-object v6, v34, v13

    aget-wide v63, v6, v2

    mul-double v61, v61, v63

    aget-wide v63, v39, v2

    aget-object v6, v34, v13

    aget-wide v65, v6, v5

    mul-double v63, v63, v65

    add-double v61, v61, v63

    aget-object v6, v34, v13

    aput-wide v3, v6, v2

    aget-object v2, v34, v13

    aput-wide v61, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_1e
    iget-object v1, v15, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const/4 v3, -0x1

    aget-object v4, v34, v13

    move v2, v10

    move-object/from16 v5, v44

    move-object/from16 v6, v32

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->rdft(II[D[I[D)V

    move/from16 v1, v36

    const/4 v6, 0x0

    :goto_1e
    if-ge v1, v0, :cond_1f

    aget-object v2, v33, v13

    aget-wide v3, v2, v6

    aget-object v2, v34, v13

    aget-wide v61, v2, v1

    add-double v3, v3, v61

    mul-int v2, v6, v12

    add-int/2addr v2, v13

    aput-wide v3, v45, v2

    add-int v1, v1, v22

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_1f
    sub-int v40, v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v1, v10, :cond_20

    aget-object v3, v33, v13

    aget-object v4, v34, v13

    aget-wide v61, v4, v1

    aput-wide v61, v3, v2

    add-int v1, v1, v22

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1f

    :cond_20
    add-int/lit8 v13, v13, 0x1

    move v5, v12

    move-object/from16 v15, v31

    move/from16 v12, v48

    move/from16 v3, v57

    move-object/from16 v31, v11

    move-wide/from16 v57, v51

    move/from16 v11, p6

    goto/16 :goto_13

    :cond_21
    move v12, v5

    move-object/from16 v11, v31

    move-wide/from16 v51, v57

    move/from16 v57, v3

    move-object/from16 v31, v15

    move-object/from16 v15, p0

    mul-int v2, v0, v17

    div-int v2, v2, v22

    add-int v16, v16, v2

    invoke-virtual/range {v56 .. v56}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p11, :cond_25

    const/4 v1, 0x0

    :goto_20
    mul-int v2, v6, v12

    if-ge v1, v2, :cond_24

    aget-wide v2, v45, v1

    const-wide/16 v24, 0x0

    cmpl-double v2, v2, v24

    if-lez v2, :cond_22

    aget-wide v2, v45, v1

    goto :goto_21

    :cond_22
    aget-wide v2, v45, v1

    neg-double v2, v2

    :goto_21
    const/4 v5, 0x0

    aget-wide v61, v29, v5

    cmpg-double v13, v61, v2

    if-gez v13, :cond_23

    goto :goto_22

    :cond_23
    aget-wide v2, v29, v5

    :goto_22
    aput-wide v2, v29, v5

    invoke-virtual/range {v56 .. v56}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    aget-wide v4, v45, v1

    invoke-virtual {v2, v1, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x7

    goto :goto_20

    :cond_24
    const-wide/16 v24, 0x0

    move/from16 v53, v0

    move v13, v1

    move/from16 v63, v10

    :goto_23
    move-object/from16 v10, v56

    goto/16 :goto_35

    :cond_25
    const-wide/16 v24, 0x0

    packed-switch p5, :pswitch_data_1

    move/from16 v53, v0

    move/from16 v63, v10

    move-object/from16 v10, v56

    move v13, v1

    goto/16 :goto_35

    :pswitch_4
    const-wide v1, 0x415fffffc0000000L    # 8388607.0

    mul-double v61, p8, v1

    const/4 v5, 0x0

    const/16 v30, 0x0

    :goto_24
    mul-int v1, v6, v12

    if-ge v5, v1, :cond_2c

    if-eqz p12, :cond_26

    aget-wide v1, v45, v5

    mul-double v1, v1, v61

    move/from16 v53, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, v29

    move v13, v4

    move/from16 v4, p12

    move/from16 v36, v5

    move/from16 v5, v30

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D[DII)I

    move-result v0

    goto :goto_27

    :cond_26
    move/from16 v53, v0

    move/from16 v36, v5

    const/4 v13, 0x0

    aget-wide v0, v45, v36

    mul-double v0, v0, v61

    invoke-direct {v15, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result v0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    if-ge v0, v1, :cond_28

    int-to-double v0, v0

    const-wide/high16 v2, -0x3ea0000000000000L    # -8388608.0

    div-double/2addr v0, v2

    aget-wide v2, v29, v13

    cmpg-double v2, v2, v0

    if-gez v2, :cond_27

    goto :goto_25

    :cond_27
    aget-wide v0, v29, v13

    :goto_25
    aput-wide v0, v29, v13

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    :cond_28
    const v1, 0x7fffff

    if-ge v1, v0, :cond_2a

    int-to-double v0, v0

    const-wide v2, 0x415fffffc0000000L    # 8388607.0

    div-double/2addr v0, v2

    aget-wide v2, v29, v13

    cmpg-double v2, v2, v0

    if-gez v2, :cond_29

    goto :goto_26

    :cond_29
    aget-wide v0, v29, v13

    :goto_26
    aput-wide v0, v29, v13

    const v0, 0x7fffff

    :cond_2a
    :goto_27
    mul-int/lit8 v5, v36, 0x3

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    move-object/from16 v4, v56

    invoke-virtual {v4, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    shr-int/2addr v0, v1

    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v30, 0x1

    if-ne v0, v12, :cond_2b

    move/from16 v30, v13

    goto :goto_28

    :cond_2b
    move/from16 v30, v0

    :goto_28
    add-int/lit8 v5, v36, 0x1

    move-object/from16 v56, v4

    move/from16 v0, v53

    goto/16 :goto_24

    :cond_2c
    move/from16 v53, v0

    move/from16 v36, v5

    const/4 v13, 0x0

    move/from16 v63, v10

    move/from16 v13, v36

    goto/16 :goto_23

    :pswitch_5
    move/from16 v53, v0

    move-object/from16 v4, v56

    const/4 v13, 0x0

    const-wide v0, 0x40dfffc000000000L    # 32767.0

    mul-double v61, p8, v0

    move v5, v13

    move/from16 v30, v5

    :goto_29
    mul-int v0, v6, v12

    if-ge v5, v0, :cond_33

    if-eqz p12, :cond_2d

    aget-wide v0, v45, v5

    mul-double v1, v0, v61

    move-object/from16 v0, p0

    move-object/from16 v3, v29

    move-object/from16 v67, v4

    move/from16 v4, p12

    move v13, v5

    move/from16 v5, v30

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D[DII)I

    move-result v0

    goto :goto_2d

    :cond_2d
    move-object/from16 v67, v4

    move v13, v5

    aget-wide v0, v45, v13

    mul-double v0, v0, v61

    invoke-direct {v15, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result v0

    const/16 v1, -0x8000

    if-ge v0, v1, :cond_2f

    int-to-double v0, v0

    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    div-double/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v3, v29, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_2e

    goto :goto_2a

    :cond_2e
    aget-wide v0, v29, v2

    :goto_2a
    aput-wide v0, v29, v2

    const/16 v0, -0x8000

    goto :goto_2b

    :cond_2f
    const/4 v2, 0x0

    :goto_2b
    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_31

    int-to-double v0, v0

    const-wide v3, 0x40dfffc000000000L    # 32767.0

    div-double/2addr v0, v3

    aget-wide v3, v29, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_30

    goto :goto_2c

    :cond_30
    aget-wide v0, v29, v2

    :goto_2c
    aput-wide v0, v29, v2

    const/16 v0, 0x7fff

    :cond_31
    :goto_2d
    iget-object v1, v15, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    move-object/from16 v5, v67

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    int-to-short v0, v0

    invoke-virtual {v1, v13, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v30, 0x1

    if-ne v0, v12, :cond_32

    const/16 v30, 0x0

    goto :goto_2e

    :cond_32
    move/from16 v30, v0

    :goto_2e
    add-int/lit8 v0, v13, 0x1

    move-object v4, v5

    const/4 v13, 0x0

    move v5, v0

    goto :goto_29

    :cond_33
    move v13, v5

    move/from16 v63, v10

    move-object v10, v4

    goto/16 :goto_35

    :pswitch_6
    move/from16 v53, v0

    move-object/from16 v5, v56

    const-wide v0, 0x405fc00000000000L    # 127.0

    mul-double v61, p8, v0

    const/4 v13, 0x0

    const/16 v30, 0x0

    :goto_2f
    mul-int v0, v6, v12

    if-ge v13, v0, :cond_3a

    if-eqz p12, :cond_34

    aget-wide v0, v45, v13

    mul-double v1, v0, v61

    move-object/from16 v0, p0

    move-object/from16 v3, v29

    move/from16 v4, p12

    move/from16 v63, v10

    move-object v10, v5

    move/from16 v5, v30

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D[DII)I

    move-result v0

    goto :goto_33

    :cond_34
    move/from16 v63, v10

    move-object v10, v5

    aget-wide v0, v45, v13

    mul-double v0, v0, v61

    invoke-direct {v15, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result v0

    const/16 v1, -0x80

    if-ge v0, v1, :cond_36

    int-to-double v0, v0

    const-wide/high16 v2, -0x3fa0000000000000L    # -128.0

    div-double/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v3, v29, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_35

    goto :goto_30

    :cond_35
    aget-wide v0, v29, v2

    :goto_30
    aput-wide v0, v29, v2

    const/16 v0, -0x80

    goto :goto_31

    :cond_36
    const/4 v2, 0x0

    :goto_31
    const/16 v1, 0x7f

    if-ge v1, v0, :cond_38

    int-to-double v0, v0

    const-wide v3, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v3

    aget-wide v3, v29, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_37

    goto :goto_32

    :cond_37
    aget-wide v0, v29, v2

    :goto_32
    aput-wide v0, v29, v2

    const/16 v0, 0x7f

    :cond_38
    :goto_33
    add-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v10, v13, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v30, 0x1

    if-ne v0, v12, :cond_39

    const/16 v30, 0x0

    goto :goto_34

    :cond_39
    move/from16 v30, v0

    :goto_34
    add-int/lit8 v13, v13, 0x1

    move-object v5, v10

    move/from16 v10, v63

    goto :goto_2f

    :cond_3a
    move/from16 v63, v10

    move-object v10, v5

    :goto_35
    if-nez v41, :cond_3e

    if-eqz v9, :cond_3d

    int-to-double v0, v8

    move/from16 v3, p7

    int-to-double v4, v3

    mul-double/2addr v0, v4

    div-double v0, v0, v51

    add-double v4, v0, v27

    move/from16 v2, v54

    add-int v9, v2, v6

    move/from16 p10, v13

    move/from16 v30, v14

    int-to-double v13, v9

    cmpl-double v4, v4, v13

    if-lez v4, :cond_3b

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v0, p5, v12

    mul-int/2addr v0, v6

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v5, p2

    invoke-virtual {v15, v5, v10}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    move v0, v8

    move/from16 v54, v9

    goto :goto_38

    :cond_3b
    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v3, p5, v12

    int-to-double v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double v0, v0, v27

    int-to-double v6, v2

    sub-double/2addr v0, v6

    mul-double/2addr v3, v0

    double-to-int v0, v3

    if-lez v0, :cond_3c

    goto/16 :goto_39

    :cond_3c
    :goto_36
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3a

    :cond_3d
    move/from16 p10, v13

    move/from16 v30, v14

    move/from16 v2, v54

    const/4 v0, 0x0

    move/from16 v3, p7

    move-object/from16 v5, p2

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v0, p5, v12

    mul-int/2addr v0, v6

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v15, v5, v10}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    add-int v54, v2, v6

    goto :goto_37

    :cond_3e
    move/from16 p10, v13

    move/from16 v30, v14

    move/from16 v2, v54

    move/from16 v1, v55

    move/from16 v3, p7

    move-object/from16 v5, p2

    if-ge v6, v1, :cond_3f

    sub-int v55, v1, v6

    move/from16 v54, v2

    :goto_37
    move v0, v8

    :goto_38
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_3b

    :cond_3f
    if-eqz v9, :cond_41

    int-to-double v13, v8

    move v0, v8

    int-to-double v8, v3

    mul-double/2addr v13, v8

    div-double v13, v13, v51

    add-double v8, v13, v27

    add-int v54, v2, v6

    sub-int v4, v54, v1

    int-to-double v3, v4

    cmpl-double v3, v8, v3

    if-lez v3, :cond_40

    mul-int v3, p5, v12

    mul-int v4, v3, v1

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v4, v6, v1

    mul-int/2addr v3, v4

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v15, v5, v10}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    add-int v54, v2, v4

    move/from16 v55, v1

    goto :goto_38

    :cond_40
    mul-int v0, p5, v12

    mul-int v3, v0, v1

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-double v3, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double v7, v7, v27

    int-to-double v11, v2

    add-double/2addr v7, v11

    int-to-double v11, v6

    add-double/2addr v7, v11

    int-to-double v0, v1

    sub-double/2addr v7, v0

    mul-double/2addr v3, v7

    double-to-int v0, v3

    :goto_39
    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v15, v5, v10}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    goto :goto_36

    :goto_3a
    invoke-direct {v15, v3, v4}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d(D)V

    const/4 v0, 0x0

    aget-wide v0, v29, v0

    return-wide v0

    :cond_41
    move v0, v8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-int v8, p5, v12

    mul-int v9, v8, v1

    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int/2addr v8, v6

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v15, v5, v10}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    sub-int v8, v6, v1

    add-int v54, v2, v8

    move/from16 v55, v1

    const/16 v41, 0x0

    :goto_3b
    add-int/lit8 v1, v16, -0x1

    div-int v1, v1, v26

    mul-int v2, v12, v1

    sub-int/2addr v7, v1

    mul-int v8, v12, v7

    const/4 v9, 0x0

    invoke-static {v11, v2, v11, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v1, v1, v26

    sub-int v16, v16, v1

    add-int/lit8 v1, v37, 0x1

    const/4 v2, 0x7

    and-int/lit8 v8, v37, 0x7

    if-ne v8, v2, :cond_42

    int-to-double v8, v0

    move/from16 v14, v30

    int-to-double v3, v14

    div-double/2addr v8, v3

    invoke-direct {v15, v8, v9}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d(D)V

    goto :goto_3c

    :cond_42
    move/from16 v14, v30

    :goto_3c
    move v2, v0

    move/from16 v37, v1

    move v1, v7

    move-object v3, v10

    move v5, v12

    move-object v8, v15

    move-object/from16 v15, v31

    move/from16 v30, v38

    move/from16 v36, v40

    move/from16 v0, v53

    move/from16 v4, v57

    move-wide/from16 v12, v59

    move/from16 v10, v63

    move/from16 v9, p7

    move/from16 v38, p10

    move/from16 v40, v6

    move-object/from16 v31, v11

    move/from16 v11, p6

    goto/16 :goto_b

    :cond_43
    move v3, v15

    move/from16 v57, v52

    move-object/from16 v5, p2

    move/from16 v12, p3

    const-wide/16 v24, 0x0

    move-object v15, v8

    mul-int/lit8 v2, v2, 0x2

    move/from16 v11, p6

    move v15, v3

    move-wide/from16 v3, v30

    goto/16 :goto_8

    :cond_44
    move-object v15, v8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v21

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v20

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v18

    const-string v2, "Resampling from %dHz to %dHz is not supported.\n%d/gcd(%d,%d)=%d must be divided by 2 or 3.\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private a(D)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-ltz v0, :cond_0

    add-double/2addr p1, v1

    goto :goto_0

    :cond_0
    sub-double/2addr p1, v1

    :goto_0
    double-to-int p1, p1

    return p1
.end method

.method private a(D[DII)I
    .locals 9

    const v0, 0xffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v1, :cond_4

    iget-object p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    iget p5, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->p:I

    add-int/lit8 v1, p5, 0x1

    iput v1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->p:I

    and-int/2addr p5, v0

    aget-wide v0, p4, p5

    add-double/2addr p1, v0

    iget p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->m:I

    int-to-double v0, p4

    cmpg-double p5, p1, v0

    if-gez p5, :cond_1

    int-to-double p4, p4

    div-double/2addr p1, p4

    aget-wide p4, p3, v2

    cmpg-double p4, p4, p1

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    aget-wide p1, p3, v2

    :goto_0
    aput-wide p1, p3, v2

    iget p1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->m:I

    int-to-double p1, p1

    :cond_1
    iget p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->n:I

    int-to-double v0, p4

    cmpl-double p5, p1, v0

    if-lez p5, :cond_3

    int-to-double p4, p4

    div-double/2addr p1, p4

    aget-wide p4, p3, v2

    cmpg-double p4, p4, p1

    if-gez p4, :cond_2

    goto :goto_1

    :cond_2
    aget-wide p1, p3, v2

    :goto_1
    aput-wide p1, p3, v2

    iget p1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->n:I

    int-to-double p1, p1

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result p1

    return p1

    :cond_4
    const-wide/16 v3, 0x0

    move p4, v2

    :goto_2
    iget v1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->l:I

    if-ge p4, v1, :cond_5

    sget-object v1, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->i:[[D

    iget v5, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->k:I

    aget-object v1, v1, v5

    aget-wide v5, v1, p4

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object v1, v1, p5

    aget-wide v7, v1, p4

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    add-double/2addr p1, v3

    iget-object p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    iget v3, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->p:I

    and-int/2addr v0, v3

    aget-wide v3, p4, v0

    add-double/2addr v3, p1

    add-int/lit8 v1, v1, -0x2

    :goto_3
    if-ltz v1, :cond_6

    iget-object p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object v0, p4, p5

    add-int/lit8 v5, v1, 0x1

    aget-object p4, p4, p5

    aget-wide v6, p4, v1

    aput-wide v6, v0, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_6
    iget p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->m:I

    int-to-double v0, p4

    cmpg-double v0, v3, v0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_9

    int-to-double v0, p4

    div-double/2addr v3, v0

    aget-wide v0, p3, v2

    cmpg-double p4, v0, v3

    if-gez p4, :cond_7

    goto :goto_4

    :cond_7
    aget-wide v3, p3, v2

    :goto_4
    aput-wide v3, p3, v2

    iget p3, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->m:I

    int-to-double p3, p3

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object v1, v0, p5

    sub-double p1, p3, p1

    aput-wide p1, v1, v2

    aget-object p1, v0, p5

    aget-wide v3, p1, v2

    cmpl-double p1, v3, v7

    if-lez p1, :cond_8

    aget-object p1, v0, p5

    aput-wide v7, p1, v2

    :cond_8
    iget-object p1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object p2, p1, p5

    aget-wide v0, p2, v2

    cmpg-double p2, v0, v5

    if-gez p2, :cond_d

    aget-object p1, p1, p5

    aput-wide v5, p1, v2

    goto :goto_6

    :cond_9
    iget p4, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->n:I

    int-to-double v0, p4

    cmpl-double v0, v3, v0

    if-lez v0, :cond_c

    int-to-double v0, p4

    div-double/2addr v3, v0

    aget-wide v0, p3, v2

    cmpg-double p4, v0, v3

    if-gez p4, :cond_a

    goto :goto_5

    :cond_a
    aget-wide v3, p3, v2

    :goto_5
    aput-wide v3, p3, v2

    iget p3, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->n:I

    int-to-double p3, p3

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object v1, v0, p5

    sub-double p1, p3, p1

    aput-wide p1, v1, v2

    aget-object p1, v0, p5

    aget-wide v3, p1, v2

    cmpl-double p1, v3, v7

    if-lez p1, :cond_b

    aget-object p1, v0, p5

    aput-wide v7, p1, v2

    :cond_b
    iget-object p1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object p2, p1, p5

    aget-wide v0, p2, v2

    cmpg-double p2, v0, v5

    if-gez p2, :cond_d

    aget-object p1, p1, p5

    aput-wide v5, p1, v2

    goto :goto_6

    :cond_c
    invoke-direct {p0, v3, v4}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result p3

    int-to-double p3, p3

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    aget-object p5, v0, p5

    sub-double p1, p3, p1

    aput-wide p1, p5, v2

    :cond_d
    :goto_6
    double-to-int p1, p3

    return p1
.end method

.method private a(II)I
    .locals 1

    :goto_0
    move v0, p2

    move p2, p1

    move p1, v0

    if-eqz p1, :cond_0

    rem-int/2addr p2, p1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private a(IIIIIID)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    const/16 v3, 0x61

    new-array v4, v3, [I

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    sget-object v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->f:[I

    aget v8, v8, v6

    move/from16 v9, p1

    if-ne v9, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move/from16 v9, p1

    :goto_1
    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eq v2, v8, :cond_2

    if-ne v2, v10, :cond_3

    :cond_2
    if-ne v6, v7, :cond_3

    const-string v8, "Warning: ATH based noise shaping for destination frequency %dHz is not available, using triangular dither\n"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v11

    invoke-static {v8, v12}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 v8, 0x2

    if-eq v2, v8, :cond_4

    if-ne v6, v7, :cond_5

    :cond_4
    move v6, v11

    :cond_5
    if-ne v2, v10, :cond_7

    if-eq v6, v5, :cond_6

    if-ne v6, v8, :cond_7

    :cond_6
    add-int/lit8 v6, v6, 0x5

    :cond_7
    iput v6, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->k:I

    new-array v6, v1, [[D

    iput-object v6, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    sget-object v6, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->g:[I

    iget v7, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->k:I

    aget v6, v6, v7

    iput v6, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->l:I

    move v6, v11

    :goto_2
    if-ge v6, v1, :cond_8

    iget-object v7, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->j:[[D

    iget v8, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->l:I

    new-array v8, v8, [D

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    move/from16 v6, p3

    iput v6, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->m:I

    move/from16 v1, p4

    iput v1, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->n:I

    const/high16 v1, 0x10000

    new-array v6, v1, [D

    iput-object v6, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    move v7, v11

    :goto_3
    if-ge v7, v3, :cond_9

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    const-wide v7, 0x41dfffffffc00000L    # 2.147483647E9

    packed-switch p6, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    move v12, v11

    move v13, v12

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_4
    if-ge v12, v1, :cond_c

    if-nez v13, :cond_b

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v13

    rem-int/2addr v13, v3

    aget v14, v4, v13

    int-to-double v14, v14

    div-double/2addr v14, v7

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v16

    aput v16, v4, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v14, v16

    if-nez v13, :cond_a

    const-wide/16 v14, 0x0

    :cond_a
    const-wide/high16 v18, -0x4000000000000000L    # -2.0

    sub-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v15

    rem-int/2addr v15, v3

    aget v9, v4, v15

    int-to-double v9, v9

    div-double/2addr v9, v7

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v16

    aput v16, v4, v15

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v9, v15

    iget-object v15, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    mul-double v16, p7, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    aput-wide v16, v15, v12

    move-wide/from16 v16, v9

    move-wide v14, v13

    move v13, v5

    goto :goto_5

    :cond_b
    iget-object v9, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    mul-double v18, p7, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    aput-wide v18, v9, v12

    move v13, v11

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :pswitch_1
    move v9, v11

    :goto_6
    if-ge v9, v1, :cond_c

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/2addr v10, v3

    aget v12, v4, v10

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v13

    aput v13, v4, v10

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/2addr v10, v3

    aget v13, v4, v10

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v14

    aput v14, v4, v10

    iget-object v10, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    int-to-double v14, v12

    div-double/2addr v14, v7

    int-to-double v12, v13

    div-double/2addr v12, v7

    sub-double/2addr v14, v12

    mul-double v12, p7, v14

    aput-wide v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :pswitch_2
    move v9, v11

    :goto_7
    if-ge v9, v1, :cond_c

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v10

    rem-int/2addr v10, v3

    aget v12, v4, v10

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v13

    aput v13, v4, v10

    iget-object v10, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->o:[D

    int-to-double v12, v12

    div-double/2addr v12, v7

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v12, v14

    mul-double v12, v12, p7

    aput-wide v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    iput v11, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->p:I

    if-eqz v2, :cond_e

    if-ne v2, v5, :cond_d

    goto :goto_9

    :cond_d
    sget-object v1, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->h:[I

    iget v2, v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->k:I

    aget v1, v1, v2

    return v1

    :cond_e
    :goto_9
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->s:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->t:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->r:I

    return-void
.end method

.method private b(D)D
    .locals 4

    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    const-wide v2, 0x3fe2b1c432ca57a8L    # 0.5842

    sub-double/2addr p1, v0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fb4302b40f66a55L    # 0.07886

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0

    :cond_1
    const-wide v0, 0x3fbc36113404ea4bL    # 0.1102

    const-wide v2, 0x4021666666666666L    # 8.7

    sub-double/2addr p1, v2

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;IIIIIDIZI)D
    .locals 61

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    const/4 v13, 0x1

    new-array v14, v13, [D

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    aput-wide v15, v14, v6

    iget v0, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->e:I

    iget-wide v1, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->c:D

    invoke-direct {v8, v11, v12}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(II)I

    move-result v17

    div-int v3, v12, v17

    const/4 v4, 0x3

    const/16 v18, 0x2

    if-ne v3, v13, :cond_0

    move v7, v13

    goto :goto_0

    :cond_0
    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_1

    move/from16 v7, v18

    goto :goto_0

    :cond_1
    rem-int/lit8 v5, v3, 0x3

    if-nez v5, :cond_48

    move v7, v4

    :goto_0
    mul-int v4, v11, v7

    const-wide/high16 v19, 0x4035000000000000L    # 21.0

    cmpg-double v3, v1, v19

    const-wide v21, 0x3fed82a9930be0dfL    # 0.9222

    const-wide v23, 0x402cb851eb851eb8L    # 14.36

    const-wide v25, 0x401fcccccccccccdL    # 7.95

    if-gtz v3, :cond_2

    move-wide/from16 v27, v21

    goto :goto_1

    :cond_2
    sub-double v27, v1, v25

    div-double v27, v27, v23

    :goto_1
    move v3, v13

    :goto_2
    mul-int v5, v0, v3

    rem-int/lit8 v29, v5, 0x2

    if-nez v29, :cond_3

    add-int/lit8 v5, v5, -0x1

    :cond_3
    move-object/from16 v30, v14

    int-to-double v13, v4

    mul-double v31, v13, v27

    add-int/lit8 v6, v5, -0x1

    move/from16 v34, v7

    int-to-double v6, v6

    div-double v31, v31, v6

    int-to-double v6, v12

    sub-double v35, v6, v31

    const-wide/high16 v37, 0x4000000000000000L    # 2.0

    div-double v35, v35, v37

    move-wide/from16 v39, v6

    iget-wide v6, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d:D

    cmpg-double v6, v31, v6

    if-gez v6, :cond_47

    invoke-direct {v8, v1, v2}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b(D)D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Lorg/lasque/tusdk/core/audio/processer/AudioBessel;->value(D)D

    move-result-wide v31

    const/4 v0, 0x1

    :goto_3
    if-ge v0, v5, :cond_4

    mul-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_4
    mul-int/lit8 v6, v0, 0x2

    new-array v7, v6, [D

    div-int/lit8 v3, v5, 0x2

    neg-int v0, v3

    move v1, v0

    :goto_4
    if-gt v1, v3, :cond_5

    add-int v41, v1, v3

    move/from16 v42, v3

    int-to-double v2, v1

    move-object/from16 v0, p0

    move/from16 v47, v1

    move-wide v1, v2

    move v3, v5

    move/from16 v48, v4

    move v15, v5

    move-wide/from16 v4, v27

    move/from16 v16, v15

    move/from16 v9, v34

    move-wide/from16 v33, v39

    const/4 v10, 0x0

    move v15, v6

    move-object/from16 v39, v7

    move-wide/from16 v6, v31

    invoke-direct/range {v0 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(DIDD)D

    move-result-wide v6

    move/from16 v1, v47

    move-wide/from16 v2, v35

    move-wide v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(IDD)D

    move-result-wide v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v13

    int-to-double v0, v11

    div-double/2addr v6, v0

    int-to-double v0, v15

    div-double/2addr v6, v0

    mul-double v6, v6, v37

    aput-wide v6, v39, v41

    add-int/lit8 v1, v47, 0x1

    move v6, v15

    move/from16 v5, v16

    move-object/from16 v7, v39

    move/from16 v3, v42

    move/from16 v4, v48

    move/from16 v10, p3

    const-wide/16 v15, 0x0

    move-wide/from16 v39, v33

    move/from16 v34, v9

    move-object/from16 v9, p2

    goto :goto_4

    :cond_5
    move/from16 v47, v1

    move/from16 v48, v4

    move/from16 v16, v5

    move v15, v6

    move/from16 v9, v34

    move-wide/from16 v33, v39

    const/4 v10, 0x0

    move-object/from16 v39, v7

    int-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double v0, v0, v37

    double-to-int v0, v0

    new-array v6, v0, [I

    aput v10, v6, v10

    div-int/lit8 v7, v15, 0x2

    new-array v4, v7, [D

    iget-object v0, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const/16 v43, 0x1

    move-object/from16 v41, v0

    move/from16 v42, v15

    move-object/from16 v44, v39

    move-object/from16 v45, v6

    move-object/from16 v46, v4

    invoke-virtual/range {v41 .. v46}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->rdft(II[D[I[D)V

    const/4 v0, 0x1

    if-ne v9, v0, :cond_6

    div-int v3, v11, v17

    mul-int/2addr v3, v12

    new-array v5, v0, [I

    aput v10, v5, v10

    new-array v1, v0, [I

    div-int v2, v11, v12

    aput v2, v1, v10

    filled-new-array {v0, v0}, [I

    move-result-object v2

    const-class v0, D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    aget-object v2, v0, v10

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    aput-wide v19, v2, v10

    move-object/from16 v35, v0

    move-object/from16 v31, v1

    move-object v11, v5

    move-object/from16 v32, v6

    move v12, v7

    move/from16 v26, v10

    move/from16 v36, v47

    const/4 v0, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x1

    move v7, v3

    move-object/from16 v47, v4

    goto/16 :goto_b

    :cond_6
    iget-wide v0, v8, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->c:D

    div-int v2, v11, v17

    mul-int v5, v2, v12

    div-int/lit8 v2, v48, 0x2

    div-int/lit8 v3, v11, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v32, v6

    move/from16 v35, v7

    int-to-double v6, v10

    div-double v6, v6, v37

    move-object v10, v4

    int-to-double v3, v3

    move-object/from16 v17, v10

    int-to-double v10, v2

    div-double v10, v10, v37

    add-double/2addr v10, v3

    cmpg-double v2, v0, v19

    if-gtz v2, :cond_7

    goto :goto_5

    :cond_7
    sub-double v2, v0, v25

    div-double v21, v2, v23

    :goto_5
    int-to-double v3, v5

    div-double v6, v3, v6

    mul-double v6, v6, v21

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v19

    double-to-int v2, v6

    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_8

    add-int/lit8 v2, v2, 0x1

    :cond_8
    move/from16 v21, v2

    invoke-direct {v8, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lorg/lasque/tusdk/core/audio/processer/AudioBessel;->value(D)D

    move-result-wide v24

    div-int v6, v5, v48

    div-int v0, v21, v6

    const/4 v1, 0x1

    add-int/lit8 v7, v0, 0x1

    new-array v1, v6, [I

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v6, :cond_a

    div-int v2, v5, v12

    mul-int/2addr v2, v0

    rem-int/2addr v2, v6

    sub-int v2, v6, v2

    aput v2, v1, v0

    aget v2, v1, v0

    if-ne v2, v6, :cond_9

    const/16 v26, 0x0

    aput v26, v1, v0

    goto :goto_7

    :cond_9
    const/16 v26, 0x0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    const/16 v26, 0x0

    new-array v2, v6, [I

    move/from16 v0, v26

    :goto_8
    if-ge v0, v6, :cond_d

    div-int v27, v5, v12

    aget v28, v1, v0

    sub-int v27, v27, v28

    div-int v27, v27, v6

    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    aput v27, v2, v0

    move-wide/from16 v40, v3

    add-int/lit8 v3, v0, 0x1

    if-ne v3, v6, :cond_b

    move/from16 v4, v26

    goto :goto_9

    :cond_b
    move v4, v3

    :goto_9
    aget v4, v1, v4

    if-nez v4, :cond_c

    aget v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v0

    :cond_c
    move v0, v3

    move-wide/from16 v3, v40

    goto :goto_8

    :cond_d
    move-wide/from16 v40, v3

    filled-new-array {v6, v7}, [I

    move-result-object v0

    const-class v3, D

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, [[D

    div-int/lit8 v4, v21, 0x2

    neg-int v0, v4

    move v3, v0

    :goto_a
    if-gt v3, v4, :cond_e

    add-int v0, v3, v4

    rem-int v28, v0, v6

    aget-object v28, v27, v28

    div-int v31, v0, v6

    move-object/from16 v36, v1

    move-object/from16 v42, v2

    int-to-double v1, v3

    move-object/from16 v0, p0

    move-object/from16 v19, v36

    move-object/from16 v20, v42

    move/from16 v36, v3

    move/from16 v3, v21

    move/from16 v42, v4

    move-object/from16 v47, v17

    move/from16 v17, v5

    move-wide/from16 v4, v22

    move/from16 v43, v7

    move/from16 v12, v35

    move/from16 v35, v6

    move-wide/from16 v6, v24

    invoke-direct/range {v0 .. v7}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(DIDD)D

    move-result-wide v6

    move/from16 v1, v36

    move-wide v2, v10

    move-wide/from16 v4, v40

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(IDD)D

    move-result-wide v0

    mul-double/2addr v6, v0

    mul-double v6, v6, v40

    div-double/2addr v6, v13

    aput-wide v6, v28, v31

    add-int/lit8 v3, v36, 0x1

    move/from16 v5, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v6, v35

    move/from16 v4, v42

    move/from16 v7, v43

    move-object/from16 v17, v47

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move/from16 v35, v12

    move/from16 v12, p7

    goto :goto_a

    :cond_e
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v36, v3

    move/from16 v43, v7

    move-object/from16 v47, v17

    move/from16 v12, v35

    move/from16 v17, v5

    move/from16 v35, v6

    move/from16 v7, v17

    move-object/from16 v11, v19

    move-object/from16 v31, v20

    move/from16 v0, v21

    move/from16 v10, v35

    move/from16 v6, v43

    move-object/from16 v35, v27

    :goto_b
    invoke-direct/range {p0 .. p0}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a()V

    move/from16 v4, v26

    move/from16 v5, p3

    filled-new-array {v5, v15}, [I

    move-result-object v1

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, [[D

    add-int/lit8 v3, v6, 0x1

    add-int v1, v3, v12

    filled-new-array {v5, v1}, [I

    move-result-object v2

    const-class v4, D

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v50, v2

    check-cast v50, [[D

    div-int v2, v12, v9

    add-int/2addr v2, v9

    const/4 v4, 0x1

    add-int/2addr v2, v4

    mul-int/2addr v2, v5

    mul-int v4, v2, p4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move/from16 v51, v10

    move-object/from16 v52, v11

    int-to-double v10, v12

    mul-double v10, v10, v33

    move-object/from16 v17, v4

    move/from16 v27, v9

    move/from16 v4, p6

    int-to-double v8, v4

    div-double/2addr v10, v8

    move-wide/from16 v19, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v8

    mul-int v4, p5, v5

    int-to-double v8, v4

    move/from16 v21, v3

    move/from16 p6, v4

    mul-double v3, v10, v8

    double-to-int v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-array v3, v2, [D

    move/from16 v22, v1

    int-to-double v1, v5

    mul-double/2addr v1, v10

    double-to-int v1, v1

    new-array v10, v1, [D

    move/from16 v1, v16

    int-to-double v1, v1

    div-double v1, v1, v37

    div-double v13, v13, v33

    div-double/2addr v1, v13

    int-to-double v13, v0

    div-double v13, v13, v37

    move-wide/from16 v53, v8

    int-to-double v8, v7

    div-double v8, v8, v33

    div-double/2addr v13, v8

    add-double/2addr v1, v13

    double-to-int v0, v1

    move/from16 v1, p10

    move v13, v0

    move-object/from16 v2, v17

    const/16 p10, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    :goto_c
    add-int/lit8 v17, v12, 0x0

    const/16 v23, 0x1

    add-int/lit8 v17, v17, -0x1

    div-int v17, v17, v27

    add-int/lit8 v17, v17, 0x1

    move/from16 v23, v9

    add-int v9, v17, v0

    if-le v9, v1, :cond_f

    sub-int v17, v1, v0

    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v9, p4, v5

    move/from16 v24, v1

    mul-int v1, v9, v17

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    move/from16 v25, v13

    move-object/from16 v13, p1

    invoke-virtual {v13, v1}, Ljava/io/InputStream;->read([B)I

    move-result v28

    if-gez v28, :cond_10

    move/from16 v28, v8

    const/4 v13, 0x0

    goto :goto_d

    :cond_10
    move/from16 v13, v28

    move/from16 v28, v8

    :goto_d
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-ge v13, v8, :cond_11

    div-int v8, v13, p4

    mul-int/2addr v8, v5

    add-int/2addr v8, v0

    goto :goto_e

    :cond_11
    move/from16 v8, v24

    :goto_e
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    div-int/2addr v13, v9

    packed-switch p4, :pswitch_data_0

    move/from16 v58, v6

    move-object/from16 v57, v10

    move/from16 v24, v11

    move-wide/from16 v55, v19

    move-object/from16 v9, p0

    move-object/from16 v20, v4

    move/from16 v19, v14

    move v14, v7

    move/from16 v2, v36

    goto/16 :goto_13

    :pswitch_0
    const/4 v2, 0x0

    :goto_f
    mul-int v9, v13, v5

    if-ge v2, v9, :cond_12

    move-wide/from16 v55, v19

    move-object/from16 v9, p0

    move/from16 v19, v14

    iget-object v14, v9, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    mul-int/lit8 v20, v5, 0x0

    add-int v20, v20, v2

    const-wide v41, 0x3e00000000200000L    # 4.656612875245797E-10

    move-object/from16 v57, v10

    move/from16 v24, v11

    int-to-double v10, v14

    mul-double v10, v10, v41

    aput-wide v10, v3, v20

    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v19

    move/from16 v11, v24

    move-wide/from16 v19, v55

    move-object/from16 v10, v57

    goto :goto_f

    :cond_12
    move-object/from16 v57, v10

    move/from16 v24, v11

    move-wide/from16 v55, v19

    move-object/from16 v9, p0

    move/from16 v19, v14

    move-object/from16 v20, v4

    move/from16 v58, v6

    move v14, v7

    goto/16 :goto_13

    :pswitch_1
    move-object/from16 v57, v10

    move/from16 v24, v11

    move-wide/from16 v55, v19

    move-object/from16 v9, p0

    move/from16 v19, v14

    const/4 v2, 0x0

    :goto_10
    mul-int v10, v13, v5

    if-ge v2, v10, :cond_13

    mul-int/lit8 v10, v5, 0x0

    add-int/2addr v10, v2

    const-wide v41, 0x3e80000020000040L    # 1.1920930376163766E-7

    mul-int/lit8 v11, v2, 0x3

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    const/16 v20, 0x0

    shl-int/lit8 v14, v14, 0x0

    move-object/from16 v20, v4

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v14

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v4, v11

    move v11, v6

    move v14, v7

    int-to-double v6, v4

    mul-double v6, v6, v41

    aput-wide v6, v3, v10

    add-int/lit8 v2, v2, 0x1

    move v6, v11

    move v7, v14

    move-object/from16 v4, v20

    goto :goto_10

    :cond_13
    move-object/from16 v20, v4

    move v14, v7

    move/from16 v58, v6

    goto/16 :goto_13

    :pswitch_2
    move-object/from16 v57, v10

    move/from16 v24, v11

    move-wide/from16 v55, v19

    move-object/from16 v9, p0

    move-object/from16 v20, v4

    move v11, v6

    move/from16 v19, v14

    move v14, v7

    const/4 v2, 0x0

    :goto_11
    mul-int v4, v13, v5

    if-ge v2, v4, :cond_14

    iget-object v4, v9, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    mul-int/lit8 v6, v5, 0x0

    add-int/2addr v6, v2

    const-wide v41, 0x3f00002000400080L    # 3.051850947599719E-5

    move v7, v11

    int-to-double v10, v4

    mul-double v10, v10, v41

    aput-wide v10, v3, v6

    add-int/lit8 v2, v2, 0x1

    move v11, v7

    goto :goto_11

    :cond_14
    move/from16 v58, v11

    goto :goto_13

    :pswitch_3
    move-object/from16 v57, v10

    move/from16 v24, v11

    move-wide/from16 v55, v19

    move-object/from16 v9, p0

    move-object/from16 v20, v4

    move/from16 v19, v14

    move v14, v7

    move v7, v6

    const/4 v2, 0x0

    :goto_12
    mul-int v4, v13, v5

    if-ge v2, v4, :cond_15

    mul-int/lit8 v4, v5, 0x0

    add-int/2addr v4, v2

    const-wide v10, 0x3f80204081020408L    # 0.007874015748031496

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, -0x80

    move/from16 v58, v7

    int-to-double v6, v6

    mul-double/2addr v6, v10

    aput-wide v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v58

    goto :goto_12

    :cond_15
    move/from16 v58, v7

    :goto_13
    mul-int v4, v5, v17

    if-ge v2, v4, :cond_16

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_16
    add-int v6, v0, v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-ltz v0, :cond_18

    if-lt v6, v8, :cond_17

    goto :goto_14

    :cond_17
    const/4 v7, 0x0

    goto :goto_15

    :cond_18
    :goto_14
    const/4 v7, 0x1

    :goto_15
    move/from16 v11, p10

    move/from16 v10, v16

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v5, :cond_22

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_17
    if-ge v2, v12, :cond_1a

    aget-object v10, v40, v0

    mul-int v11, v4, v5

    add-int/2addr v11, v0

    aget-wide v16, v3, v11

    aput-wide v16, v10, v2

    add-int/lit8 v10, v2, 0x1

    :goto_18
    add-int v11, v2, v27

    if-ge v10, v11, :cond_19

    aget-object v11, v40, v0

    const-wide/16 v16, 0x0

    aput-wide v16, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_19
    const-wide/16 v16, 0x0

    add-int/lit8 v4, v4, 0x1

    move v2, v11

    goto :goto_17

    :cond_1a
    const-wide/16 v16, 0x0

    move v2, v12

    :goto_19
    if-ge v2, v15, :cond_1b

    aget-object v4, v40, v0

    aput-wide v16, v4, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v16, 0x0

    goto :goto_19

    :cond_1b
    iget-object v2, v9, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const/16 v43, 0x1

    aget-object v44, v40, v0

    move-object/from16 v41, v2

    move/from16 v42, v15

    move-object/from16 v45, v32

    move-object/from16 v46, v47

    invoke-virtual/range {v41 .. v46}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->rdft(II[D[I[D)V

    aget-object v2, v40, v0

    const/4 v4, 0x0

    aget-wide v10, v39, v4

    aget-object v13, v40, v0

    aget-wide v16, v13, v4

    mul-double v10, v10, v16

    aput-wide v10, v2, v4

    aget-object v2, v40, v0

    const/4 v4, 0x1

    aget-wide v10, v39, v4

    aget-object v13, v40, v0

    aget-wide v16, v13, v4

    mul-double v10, v10, v16

    aput-wide v10, v2, v4

    const/4 v2, 0x1

    :goto_1a
    if-ge v2, v12, :cond_1c

    mul-int/lit8 v4, v2, 0x2

    aget-wide v10, v39, v4

    aget-object v13, v40, v0

    aget-wide v16, v13, v4

    mul-double v10, v10, v16

    add-int/lit8 v13, v4, 0x1

    aget-wide v16, v39, v13

    aget-object v36, v40, v0

    aget-wide v41, v36, v13

    mul-double v16, v16, v41

    sub-double v10, v10, v16

    aget-wide v16, v39, v13

    aget-object v36, v40, v0

    aget-wide v41, v36, v4

    mul-double v16, v16, v41

    aget-wide v41, v39, v4

    aget-object v36, v40, v0

    aget-wide v43, v36, v13

    mul-double v41, v41, v43

    add-double v16, v16, v41

    aget-object v36, v40, v0

    aput-wide v10, v36, v4

    aget-object v4, v40, v0

    aput-wide v16, v4, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_1c
    iget-object v2, v9, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->b:Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;

    const/16 v43, -0x1

    aget-object v44, v40, v0

    move-object/from16 v41, v2

    move/from16 v42, v15

    move-object/from16 v45, v32

    move-object/from16 v46, v47

    invoke-virtual/range {v41 .. v46}, Lorg/lasque/tusdk/core/audio/processer/AudioSplitRadixFft;->rdft(II[D[I[D)V

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v12, :cond_1d

    aget-object v4, v50, v0

    add-int v10, v21, v2

    aget-wide v16, v4, v10

    aget-object v11, v40, v0

    aget-wide v41, v11, v2

    add-double v16, v16, v41

    aput-wide v16, v4, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_1d
    div-int v4, v14, v48

    div-int v11, v24, v4

    rem-int v4, v24, v4

    if-eqz v4, :cond_1e

    add-int/lit8 v11, v11, 0x1

    :cond_1e
    const/16 v26, 0x0

    aget-object v4, v50, v26

    array-length v4, v4

    mul-int/2addr v4, v0

    add-int/2addr v4, v11

    move/from16 v11, p10

    move/from16 v10, v26

    :goto_1c
    aget-object v13, v50, v26

    array-length v13, v13

    mul-int/2addr v13, v0

    sub-int v13, v4, v13

    move-object/from16 v16, v1

    add-int/lit8 v1, v12, 0x1

    if-ge v13, v1, :cond_21

    aget v1, v52, v11

    aget v2, v31, v11

    add-int/2addr v2, v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v51

    if-ne v11, v13, :cond_1f

    const/4 v11, 0x0

    :cond_1f
    move/from16 v17, v2

    move/from16 v36, v4

    move/from16 v4, v58

    const/4 v2, 0x0

    const-wide/16 v41, 0x0

    :goto_1d
    if-ge v2, v4, :cond_20

    aget-object v43, v35, v1

    aget-wide v44, v43, v2

    move/from16 v43, v1

    const/16 v26, 0x0

    aget-object v1, v50, v26

    array-length v1, v1

    div-int v1, v36, v1

    aget-object v1, v50, v1

    move-object/from16 v46, v3

    aget-object v3, v50, v26

    array-length v3, v3

    rem-int v3, v36, v3

    aget-wide v58, v1, v3

    mul-double v44, v44, v58

    add-double v41, v41, v44

    const/4 v1, 0x1

    add-int/lit8 v36, v36, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v43

    move-object/from16 v3, v46

    goto :goto_1d

    :cond_20
    move-object/from16 v46, v3

    const/16 v26, 0x0

    mul-int v1, v10, v5

    add-int v1, v26, v1

    add-int/2addr v1, v0

    aput-wide v41, v57, v1

    add-int/lit8 v10, v10, 0x1

    move/from16 v58, v4

    move/from16 v51, v13

    move-object/from16 v1, v16

    move/from16 v4, v17

    const/16 v26, 0x0

    goto :goto_1c

    :cond_21
    move-object/from16 v46, v3

    move/from16 v13, v51

    move/from16 v4, v58

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_16

    :cond_22
    move-object/from16 v16, v1

    move-object/from16 v46, v3

    move/from16 v13, v51

    move/from16 v4, v58

    div-int v0, v14, p7

    mul-int/2addr v0, v10

    add-int v17, v24, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p11, :cond_26

    const/4 v0, 0x0

    :goto_1e
    mul-int v1, v10, v5

    if-ge v0, v1, :cond_25

    aget-wide v1, v57, v0

    const-wide/16 v41, 0x0

    cmpl-double v1, v1, v41

    if-lez v1, :cond_23

    aget-wide v1, v57, v0

    goto :goto_1f

    :cond_23
    aget-wide v1, v57, v0

    neg-double v1, v1

    :goto_1f
    const/16 v24, 0x0

    aget-wide v43, v30, v24

    cmpg-double v3, v43, v1

    if-gez v3, :cond_24

    goto :goto_20

    :cond_24
    aget-wide v1, v30, v24

    :goto_20
    aput-wide v1, v30, v24

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    aget-wide v2, v57, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_25
    const-wide/16 v41, 0x0

    move/from16 v45, v4

    move/from16 v26, v8

    move/from16 p10, v11

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v11, v21

    move-object/from16 v36, v46

    move/from16 v46, p6

    move v15, v0

    move v8, v5

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    goto/16 :goto_33

    :cond_26
    const/16 v24, 0x0

    const-wide/16 v41, 0x0

    packed-switch p5, :pswitch_data_1

    move/from16 v45, v4

    move/from16 v26, v8

    move/from16 p10, v11

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v11, v21

    move-object/from16 v36, v46

    move/from16 v46, p6

    move v8, v5

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    move v15, v2

    goto/16 :goto_33

    :pswitch_4
    const-wide v0, 0x415fffffc0000000L    # 8388607.0

    mul-double v43, p8, v0

    move/from16 v3, v24

    move/from16 v26, v3

    :goto_21
    mul-int v0, v10, v5

    if-ge v3, v0, :cond_2d

    if-eqz p12, :cond_27

    aget-wide v0, v57, v3

    mul-double v1, v0, v43

    move-object/from16 v0, p0

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    move/from16 p10, v11

    move/from16 v11, v21

    move-object/from16 v36, v46

    move/from16 v21, v3

    move-object/from16 v3, v30

    move/from16 v46, p6

    move/from16 v45, v4

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v15, v24

    move/from16 v4, p12

    move/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D[DII)I

    move-result v0

    goto :goto_24

    :cond_27
    move/from16 v45, v4

    move/from16 p10, v11

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v11, v21

    move/from16 v15, v24

    move-object/from16 v36, v46

    move/from16 v46, p6

    move/from16 v21, v3

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    aget-wide v0, v57, v21

    mul-double v0, v0, v43

    invoke-direct {v9, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result v0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    if-ge v0, v1, :cond_29

    int-to-double v0, v0

    const-wide/high16 v2, -0x3ea0000000000000L    # -8388608.0

    div-double/2addr v0, v2

    aget-wide v2, v30, v15

    cmpg-double v2, v2, v0

    if-gez v2, :cond_28

    goto :goto_22

    :cond_28
    aget-wide v0, v30, v15

    :goto_22
    aput-wide v0, v30, v15

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    :cond_29
    const v1, 0x7fffff

    if-ge v1, v0, :cond_2b

    int-to-double v0, v0

    const-wide v2, 0x415fffffc0000000L    # 8388607.0

    div-double/2addr v0, v2

    aget-wide v2, v30, v15

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2a

    goto :goto_23

    :cond_2a
    aget-wide v0, v30, v15

    :goto_23
    aput-wide v0, v30, v15

    const v0, 0x7fffff

    :cond_2b
    :goto_24
    mul-int/lit8 v3, v21, 0x3

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {v13, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v3, 0x1

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    invoke-virtual {v13, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v13, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v26, 0x1

    move/from16 v5, p3

    if-ne v0, v5, :cond_2c

    move/from16 v26, v15

    goto :goto_25

    :cond_2c
    move/from16 v26, v0

    :goto_25
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v11

    move-object/from16 v20, v13

    move/from16 v24, v15

    move/from16 v4, v45

    move/from16 p6, v46

    move/from16 v15, v49

    move/from16 v13, v51

    move/from16 v11, p10

    move-object/from16 v46, v36

    move-object/from16 v60, v22

    move/from16 v22, v16

    move-object/from16 v16, v60

    goto/16 :goto_21

    :cond_2d
    move/from16 v45, v4

    move/from16 p10, v11

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v11, v21

    move-object/from16 v36, v46

    move/from16 v46, p6

    move/from16 v21, v3

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    move/from16 v26, v8

    move/from16 v15, v21

    :goto_26
    move v8, v5

    goto/16 :goto_33

    :pswitch_5
    move/from16 v45, v4

    move/from16 p10, v11

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v11, v21

    move/from16 v15, v24

    move-object/from16 v36, v46

    move/from16 v46, p6

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    const-wide v0, 0x40dfffc000000000L    # 32767.0

    mul-double v20, p8, v0

    move v4, v15

    move/from16 v24, v4

    :goto_27
    mul-int v0, v10, v5

    if-ge v4, v0, :cond_34

    if-eqz p12, :cond_2e

    aget-wide v0, v57, v4

    mul-double v1, v0, v20

    move-object/from16 v0, p0

    move-object/from16 v3, v30

    move v15, v4

    move/from16 v4, p12

    move/from16 v26, v8

    move v8, v5

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D[DII)I

    move-result v0

    goto :goto_2b

    :cond_2e
    move v15, v4

    move/from16 v26, v8

    move v8, v5

    aget-wide v0, v57, v15

    mul-double v0, v0, v20

    invoke-direct {v9, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result v0

    const/16 v1, -0x8000

    if-ge v0, v1, :cond_30

    int-to-double v0, v0

    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    div-double/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v3, v30, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_2f

    goto :goto_28

    :cond_2f
    aget-wide v0, v30, v2

    :goto_28
    aput-wide v0, v30, v2

    const/16 v0, -0x8000

    goto :goto_29

    :cond_30
    const/4 v2, 0x0

    :goto_29
    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_32

    int-to-double v0, v0

    const-wide v3, 0x40dfffc000000000L    # 32767.0

    div-double/2addr v0, v3

    aget-wide v3, v30, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_31

    goto :goto_2a

    :cond_31
    aget-wide v0, v30, v2

    :goto_2a
    aput-wide v0, v30, v2

    const/16 v0, 0x7fff

    :cond_32
    :goto_2b
    iget-object v1, v9, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    int-to-short v0, v0

    invoke-virtual {v1, v15, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v24, 0x1

    if-ne v0, v8, :cond_33

    const/16 v24, 0x0

    goto :goto_2c

    :cond_33
    move/from16 v24, v0

    :goto_2c
    add-int/lit8 v4, v15, 0x1

    move v5, v8

    move/from16 v8, v26

    const/4 v15, 0x0

    goto :goto_27

    :cond_34
    move v15, v4

    move/from16 v26, v8

    goto/16 :goto_26

    :pswitch_6
    move/from16 v45, v4

    move/from16 v26, v8

    move/from16 p10, v11

    move/from16 v51, v13

    move/from16 v49, v15

    move-object/from16 v13, v20

    move/from16 v11, v21

    move-object/from16 v36, v46

    move/from16 v46, p6

    move v8, v5

    move/from16 v60, v22

    move-object/from16 v22, v16

    move/from16 v16, v60

    const-wide v20, 0x405fc00000000000L    # 127.0

    mul-double v58, p8, v20

    const/4 v15, 0x0

    const/16 v24, 0x0

    :goto_2d
    mul-int v0, v10, v8

    if-ge v15, v0, :cond_3b

    if-eqz p12, :cond_35

    aget-wide v0, v57, v15

    mul-double v1, v0, v58

    move-object/from16 v0, p0

    move-object/from16 v3, v30

    move/from16 v4, p12

    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D[DII)I

    move-result v0

    goto :goto_31

    :cond_35
    aget-wide v0, v57, v15

    mul-double v0, v0, v58

    invoke-direct {v9, v0, v1}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->a(D)I

    move-result v0

    const/16 v1, -0x80

    if-ge v0, v1, :cond_37

    int-to-double v0, v0

    const-wide/high16 v2, -0x3fa0000000000000L    # -128.0

    div-double/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v3, v30, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_36

    goto :goto_2e

    :cond_36
    aget-wide v0, v30, v2

    :goto_2e
    aput-wide v0, v30, v2

    const/16 v0, -0x80

    goto :goto_2f

    :cond_37
    const/4 v2, 0x0

    :goto_2f
    const/16 v1, 0x7f

    if-ge v1, v0, :cond_39

    int-to-double v0, v0

    div-double v0, v0, v20

    aget-wide v3, v30, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_38

    goto :goto_30

    :cond_38
    aget-wide v0, v30, v2

    :goto_30
    aput-wide v0, v30, v2

    const/16 v0, 0x7f

    :cond_39
    :goto_31
    add-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {v13, v15, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v24, 0x1

    if-ne v0, v8, :cond_3a

    const/16 v24, 0x0

    goto :goto_32

    :cond_3a
    move/from16 v24, v0

    :goto_32
    add-int/lit8 v15, v15, 0x1

    goto :goto_2d

    :cond_3b
    :goto_33
    if-nez v19, :cond_3f

    if-eqz v7, :cond_3e

    int-to-double v0, v6

    mul-double v0, v0, v33

    div-double v0, v0, v55

    add-double v2, v0, v37

    add-int v4, v28, v10

    int-to-double v7, v4

    cmpl-double v2, v2, v7

    if-lez v2, :cond_3c

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v0, v46, v10

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move/from16 v8, v27

    move-object/from16 v5, p2

    invoke-virtual {v9, v5, v13}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    goto :goto_35

    :cond_3c
    const/4 v2, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v13, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    add-double v0, v0, v37

    move/from16 v2, v28

    int-to-double v2, v2

    sub-double/2addr v0, v2

    mul-double v0, v0, v53

    double-to-int v0, v0

    if-lez v0, :cond_3d

    goto/16 :goto_37

    :cond_3d
    :goto_34
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_38

    :cond_3e
    move/from16 v8, v27

    move/from16 v2, v28

    const/4 v0, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v4, v46, v10

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v5, v13}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    add-int v0, v2, v10

    move v4, v0

    :goto_35
    move/from16 v44, v8

    move/from16 v0, v25

    goto :goto_36

    :cond_3f
    move/from16 v0, v25

    move/from16 v8, v27

    move/from16 v2, v28

    move-object/from16 v5, p2

    if-ge v10, v0, :cond_40

    sub-int/2addr v0, v10

    move v4, v2

    move/from16 v44, v8

    :goto_36
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    goto :goto_39

    :cond_40
    if-eqz v7, :cond_42

    int-to-double v3, v6

    mul-double v3, v3, v33

    div-double v3, v3, v55

    add-double v20, v3, v37

    add-int v1, v2, v10

    sub-int/2addr v1, v0

    move/from16 v44, v8

    int-to-double v7, v1

    cmpl-double v1, v20, v7

    if-lez v1, :cond_41

    mul-int v4, v46, v0

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v10, v0

    mul-int v4, v46, v1

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v5, v13}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    add-int v8, v2, v1

    move v4, v8

    goto :goto_36

    :cond_41
    mul-int v1, v46, v0

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    add-double v3, v3, v37

    int-to-double v1, v2

    add-double/2addr v3, v1

    int-to-double v1, v10

    add-double/2addr v3, v1

    int-to-double v0, v0

    sub-double/2addr v3, v0

    mul-double v0, v53, v3

    double-to-int v0, v0

    :goto_37
    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v5, v13}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    goto :goto_34

    :goto_38
    invoke-direct {v9, v7, v8}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d(D)V

    const/4 v0, 0x0

    aget-wide v0, v30, v0

    return-wide v0

    :cond_42
    move/from16 v44, v8

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-int v4, v46, v0

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v4, v46, v10

    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v5, v13}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V

    sub-int v1, v10, v0

    add-int/2addr v1, v2

    move v4, v1

    const/16 v19, 0x0

    :goto_39
    add-int/lit8 v1, v17, -0x1

    div-int v2, v14, v48

    div-int/2addr v1, v2

    if-le v1, v12, :cond_43

    move v1, v12

    :cond_43
    move/from16 v3, p3

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v3, :cond_44

    aget-object v8, v50, v7

    move/from16 p6, v0

    aget-object v0, v50, v7

    move/from16 v20, v4

    sub-int v4, v16, v1

    const/4 v5, 0x0

    invoke-static {v8, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p6

    move/from16 v4, v20

    move-object/from16 v5, p2

    goto :goto_3a

    :cond_44
    move/from16 p6, v0

    move/from16 v20, v4

    mul-int/2addr v1, v2

    sub-int v0, v17, v1

    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v3, :cond_45

    aget-object v2, v40, v1

    aget-object v4, v50, v1

    invoke-static {v2, v12, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_45
    add-int/lit8 v1, v23, 0x1

    and-int/lit8 v2, v23, 0x7

    const/4 v4, 0x7

    if-ne v2, v4, :cond_46

    int-to-double v4, v6

    move v2, v0

    move v7, v1

    move/from16 v8, v26

    int-to-double v0, v8

    div-double/2addr v4, v0

    invoke-direct {v9, v4, v5}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->d(D)V

    goto :goto_3c

    :cond_46
    move v2, v0

    move v7, v1

    move/from16 v8, v26

    :goto_3c
    move v5, v3

    move v0, v6

    move v9, v7

    move v1, v8

    move/from16 v21, v11

    move-object v4, v13

    move v7, v14

    move/from16 v14, v19

    move/from16 v8, v20

    move-object/from16 v3, v36

    move/from16 v27, v44

    move/from16 v6, v45

    move-wide/from16 v19, v55

    move/from16 v13, p6

    move v11, v2

    move/from16 v36, v15

    move-object/from16 v2, v22

    move/from16 p6, v46

    move/from16 v15, v49

    move/from16 v22, v16

    move/from16 v16, v10

    move-object/from16 v10, v57

    goto/16 :goto_c

    :cond_47
    move/from16 v48, v4

    move-object v9, v8

    move v4, v11

    move-wide/from16 v41, v15

    move/from16 v44, v34

    mul-int/lit8 v3, v3, 0x2

    move/from16 v10, p3

    move/from16 v12, p7

    move-object/from16 v14, v30

    move/from16 v7, v44

    move/from16 v4, v48

    const/4 v6, 0x0

    move-object/from16 v9, p2

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_48
    move v5, v4

    move-object v9, v8

    move v4, v11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v1, v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v18

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Resampling from %dHz to %dHz is not supported.\n%d/gcd(%d,%d)=%d must be divided by 2 or 3."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private c(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double p1, v0, p1

    :goto_0
    return-wide p1
.end method

.method private d(D)V
    .locals 8

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    long-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p1

    mul-double/2addr v4, v6

    div-double/2addr v4, p1

    double-to-int v2, v4

    :goto_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v4

    double-to-int p1, p1

    iget p2, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->r:I

    const/4 v4, 0x1

    if-ne p1, p2, :cond_2

    iget-wide v5, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->t:J

    cmp-long p2, v0, v5

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, " %3d%% processed"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2, v5}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->r:I

    :cond_3
    iget-wide p1, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->t:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_4

    const-string p1, ", ETA =%4dmsec"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v3

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v0, p0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->t:J

    :cond_4
    return-void
.end method


# virtual methods
.method protected getDataFromByteBuffer(Ljava/nio/ByteBuffer;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected writeBuffers(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;->getDataFromByteBuffer(Ljava/nio/ByteBuffer;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
