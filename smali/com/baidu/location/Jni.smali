.class public Lcom/baidu/location/Jni;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# static fields
.field private static k9:I = 0xe

.field private static la:I = 0xd

.field private static lb:I = 0x400

.field private static lc:I = 0xb

.field private static ld:I = 0xf

.field private static le:I = 0xc

.field private static lf:Z = false

.field private static lg:I = 0x1

.field private static lh:I = 0x2

.field private static li:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "locSDK6a"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/location/Jni;->encrypt([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/location/Jni;->if([B)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const-string p0, "err!"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "null"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget v0, Lcom/baidu/location/Jni;->lb:I

    new-array v0, v0, [B

    array-length v1, p0

    const/16 v2, 0x2e4

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    aget-byte v4, p0, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, v2

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const p0, 0x20568

    :try_start_0
    invoke-static {v0, p0}, Lcom/baidu/location/Jni;->a([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string p0, "err!"

    :goto_1
    return-object p0
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const-string p0, "err!"

    return-object p0

    :cond_0
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    const p0, 0x20568

    :try_start_1
    invoke-static {v0, p0}, Lcom/baidu/location/Jni;->encodeNotLimit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string p0, "err!"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|tp=3"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const-string p0, "err!"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/location/Jni;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|tp=3"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ""

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :try_start_1
    invoke-static {v0}, Lcom/baidu/location/Jni;->murmur(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const-string p0, "err!"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "null"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const v0, 0x20568

    :try_start_0
    invoke-static {p0, v0}, Lcom/baidu/location/Jni;->c([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string p0, "err!"

    :goto_0
    return-object p0
.end method

.method public static K(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const-string p0, "err!"

    return-object p0

    :cond_0
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    const p0, 0x20568

    :try_start_1
    invoke-static {v0, p0}, Lcom/baidu/location/Jni;->ee(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string p0, "err!"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|tp=4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/location/Jni;->g([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    return-object v1

    :cond_2
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p0

    :catch_0
    return-object v1
.end method

.method private static native a([BI)Ljava/lang/String;
.end method

.method private static native b(DDII)Ljava/lang/String;
.end method

.method private static native c([BI)Ljava/lang/String;
.end method

.method public static dG()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const-string v0, "err!"

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/location/Jni;->sky()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v0, "err!"

    :goto_0
    return-object v0
.end method

.method private static native ee(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native encodeNotLimit(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native encrypt([B)[B
.end method

.method private static native f([B[B)V
.end method

.method private static native g([B)Ljava/lang/String;
.end method

.method private static native ib([B[B)Ljava/lang/String;
.end method

.method private static if([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/baidu/location/f/b/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static if([B[B)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/location/Jni;->ib([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(DDLjava/lang/String;)[D
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sget-boolean v1, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    const-string v2, "bd09"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v1, Lcom/baidu/location/Jni;->li:I

    :cond_1
    :goto_0
    move v6, v1

    goto :goto_1

    :cond_2
    const-string v2, "bd09ll"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v1, Lcom/baidu/location/Jni;->lg:I

    goto :goto_0

    :cond_3
    const-string v2, "gcj02"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v1, Lcom/baidu/location/Jni;->lh:I

    goto :goto_0

    :cond_4
    const-string v2, "gps2gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v1, Lcom/baidu/location/Jni;->lc:I

    goto :goto_0

    :cond_5
    const-string v2, "bd092gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v1, Lcom/baidu/location/Jni;->le:I

    goto :goto_0

    :cond_6
    const-string v2, "bd09ll2gcj"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v1, Lcom/baidu/location/Jni;->la:I

    goto :goto_0

    :cond_7
    const-string v2, "wgs842mc"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget v1, Lcom/baidu/location/Jni;->ld:I

    goto :goto_0

    :goto_1
    const v7, 0x20568

    move-wide v2, p0

    move-wide v4, p2

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/baidu/location/Jni;->b(DDII)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p2, p0, p1

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    aput-wide p2, v0, p1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    aput-wide p2, v0, p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static int(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/Jni;->lf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/location/Jni;->f([B[B)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static native murmur(Ljava/lang/String;)J
.end method

.method private static native sky()Ljava/lang/String;
.end method
