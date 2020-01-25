.class public Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(BBZ)S
    .locals 0

    if-eqz p2, :cond_0

    and-int/lit16 p0, p0, 0xff

    or-int/lit8 p0, p0, 0x0

    int-to-short p0, p0

    shl-int/lit8 p0, p0, 0x8

    int-to-short p0, p0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0xff

    or-int/lit8 p1, p1, 0x0

    int-to-short p1, p1

    shl-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    :goto_0
    int-to-short p0, p0

    return p0
.end method

.method private static a(BBBBZ)[B
    .locals 0

    invoke-static {p0, p1, p4}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->a(BBZ)S

    move-result p0

    invoke-static {p2, p3, p4}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->a(BBZ)S

    move-result p1

    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    int-to-short p0, p0

    invoke-static {p0, p4}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->a(SZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static a(SZ)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    and-int/lit16 p1, p0, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-short p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p0, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    int-to-short p0, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    :goto_0
    return-object v0
.end method

.method public static convertByteNumber(II[B)[B
    .locals 7

    if-ne p0, p1, :cond_0

    return-object p2

    :cond_0
    array-length v0, p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/4 v2, 0x2

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eq p1, v4, :cond_2

    goto :goto_3

    :cond_2
    div-int/2addr v0, v2

    new-array p0, v0, [B

    :goto_1
    if-ge v3, v0, :cond_3

    mul-int/lit8 p1, v3, 0x2

    aget-byte v2, p2, p1

    add-int/2addr p1, v4

    aget-byte p1, p2, p1

    invoke-static {v2, p1, v1}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->a(BBZ)S

    move-result p1

    div-int/lit16 p1, p1, 0x100

    int-to-byte p1, p1

    aput-byte p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :pswitch_1
    if-eq p1, v2, :cond_4

    goto :goto_3

    :cond_4
    mul-int/lit8 p0, v0, 0x2

    new-array p0, p0, [B

    move p1, v3

    :goto_2
    if-ge p1, v0, :cond_5

    aget-byte v2, p2, p1

    mul-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    invoke-static {v2, v1}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->a(SZ)[B

    move-result-object v2

    mul-int/lit8 v5, p1, 0x2

    aget-byte v6, v2, v3

    aput-byte v6, p0, v5

    add-int/2addr v5, v4

    aget-byte v2, v2, v4

    aput-byte v2, p0, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-object p0

    :goto_3
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertChannelNumber(III[B)[B
    .locals 7

    if-ne p0, p1, :cond_0

    return-object p3

    :cond_0
    packed-switch p2, :pswitch_data_0

    return-object p3

    :pswitch_0
    array-length v0, p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/4 v2, 0x2

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_1
    if-eq p1, v4, :cond_2

    goto/16 :goto_7

    :cond_2
    div-int/2addr v0, v2

    new-array p0, v0, [B

    packed-switch p2, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    move p1, v3

    :goto_1
    if-ge p1, v0, :cond_3

    mul-int/lit8 p2, p1, 0x2

    aget-byte v2, p3, p2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p3, v5

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p3, v6

    add-int/lit8 p2, p2, 0x3

    aget-byte p2, p3, p2

    invoke-static {v2, v5, v6, p2, v1}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->a(BBBBZ)[B

    move-result-object p2

    aget-byte v2, p2, v3

    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte p2, p2, v4

    aput-byte p2, p0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :goto_2
    :pswitch_3
    if-ge v3, v0, :cond_3

    mul-int/lit8 p1, v3, 0x2

    aget-byte p2, p3, p1

    int-to-short p2, p2

    add-int/2addr p1, v4

    aget-byte p1, p3, p1

    int-to-short p1, p1

    add-int/2addr p2, p1

    int-to-short p1, p2

    shr-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, p0, v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_3
    :goto_3
    return-object p0

    :pswitch_4
    if-eq p1, v2, :cond_4

    goto :goto_7

    :cond_4
    mul-int/lit8 p0, v0, 0x2

    new-array p0, p0, [B

    packed-switch p2, :pswitch_data_3

    goto :goto_6

    :goto_4
    :pswitch_5
    if-ge v3, v0, :cond_5

    aget-byte p1, p3, v3

    add-int/lit8 p2, v3, 0x1

    aget-byte p2, p3, p2

    mul-int/lit8 v1, v3, 0x2

    aput-byte p1, p0, v1

    add-int/lit8 v2, v1, 0x1

    aput-byte p2, p0, v2

    add-int/lit8 v2, v1, 0x2

    aput-byte p1, p0, v2

    add-int/lit8 v1, v1, 0x3

    aput-byte p2, p0, v1

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :goto_5
    :pswitch_6
    if-ge v3, v0, :cond_5

    aget-byte p1, p3, v3

    mul-int/lit8 p2, v3, 0x2

    aput-byte p1, p0, p2

    add-int/2addr p2, v4

    aput-byte p1, p0, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    return-object p0

    :goto_7
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static convertSampleRate(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/lasque/tusdk/core/audio/processer/TuSDKAudioProcesser;->convertSampleRate(Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static convertSampleRate(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 15

    move/from16 v3, p2

    move/from16 v4, p3

    if-ne v3, v4, :cond_0

    const-string v0, "The sampling rate is the same"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    move-object v1, p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v0, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;

    const v8, 0x7fffffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v1, v13

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v12}, Lorg/lasque/tusdk/core/audio/processer/AudioResampler;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;IIIIIIDIZ)V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot Convert SampleRate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot open output file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot open input file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
