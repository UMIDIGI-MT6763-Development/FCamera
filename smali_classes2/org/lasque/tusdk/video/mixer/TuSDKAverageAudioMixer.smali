.class public Lorg/lasque/tusdk/video/mixer/TuSDKAverageAudioMixer;
.super Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;-><init>()V

    return-void
.end method


# virtual methods
.method public mixRawAudioBytes([[B)[B
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    move v3, v1

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    aget-object v5, p1, v3

    array-length v5, v5

    array-length v6, v2

    if-eq v5, v6, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column of the road of audio + "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is diffrent."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    array-length v0, p1

    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    filled-new-array {v0, v3}, [I

    move-result-object v5

    const-class v6, S

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_5

    move v7, v1

    :goto_2
    if-ge v7, v3, :cond_4

    aget-object v8, v5, v6

    aget-object v9, p1, v6

    mul-int/lit8 v10, v7, 0x2

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget-object v11, p1, v6

    add-int/2addr v10, v4

    aget-byte v10, v11, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-array p1, v3, [S

    move v6, v1

    :goto_3
    if-ge v6, v3, :cond_7

    move v7, v1

    move v8, v7

    :goto_4
    if-ge v7, v0, :cond_6

    aget-object v9, v5, v7

    aget-short v9, v9, v6

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    div-int/2addr v8, v0

    int-to-short v7, v8

    aput-short v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    if-ge v1, v3, :cond_8

    mul-int/lit8 v0, v1, 0x2

    aget-short v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/2addr v0, v4

    aget-short v5, p1, v1

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    return-object v2

    :cond_9
    :goto_6
    return-object v0
.end method
