.class public Lcom/baidu/location/e/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# static fields
.field private static h0:I = 0x0

.field private static final h1:I = 0x5

.field private static final h2:I = 0x2ee

.field private static final h3:I = 0x3e8

.field private static final h5:I = 0x64

.field private static h7:I = 0x0

.field private static h8:Lcom/baidu/location/e/k; = null

.field private static h9:J = 0x0L

.field private static final hL:I = 0xc

.field private static hM:Ljava/lang/StringBuffer; = null

.field private static final hN:I = 0x5

.field private static hO:Ljava/io/File; = null

.field private static final hP:I = 0xe10

.field private static hQ:I = 0x0

.field private static hR:J = 0x0L

.field private static hS:J = 0x0L

.field private static hT:Z = false

.field private static final hU:I = 0x400

.field private static hV:I = 0x0

.field private static hW:D = 0.0

.field private static hX:D = 0.0

.field private static hY:Ljava/lang/String; = "Temp_in.dat"

.field private static hZ:I


# instance fields
.field private h4:Ljava/lang/String;

.field private h6:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/e/k;->hY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/e/k;->hT:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/e/k;->hZ:I

    sput v0, Lcom/baidu/location/e/k;->h7:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/baidu/location/e/k;->hS:J

    sput-wide v1, Lcom/baidu/location/e/k;->hR:J

    sput-wide v1, Lcom/baidu/location/e/k;->h9:J

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/baidu/location/e/k;->hW:D

    sput-wide v1, Lcom/baidu/location/e/k;->hX:D

    sput v0, Lcom/baidu/location/e/k;->hQ:I

    sput v0, Lcom/baidu/location/e/k;->hV:I

    sput v0, Lcom/baidu/location/e/k;->h0:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/k;->h4:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/k;->h6:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/baidu/location/e/k;->h4:Ljava/lang/String;

    return-void
.end method

.method private static b2()Z
    .locals 4

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/e/k;->b4()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :catch_0
    return v0
.end method

.method private b3()V
    .locals 2

    sget-object v0, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/k;->u(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/e/k;->b4()V

    return-void
.end method

.method private static b4()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/e/k;->hT:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/e/k;->hZ:I

    sput v0, Lcom/baidu/location/e/k;->h7:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/baidu/location/e/k;->hS:J

    sput-wide v1, Lcom/baidu/location/e/k;->hR:J

    sput-wide v1, Lcom/baidu/location/e/k;->h9:J

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/baidu/location/e/k;->hW:D

    sput-wide v1, Lcom/baidu/location/e/k;->hX:D

    sput v0, Lcom/baidu/location/e/k;->hQ:I

    sput v0, Lcom/baidu/location/e/k;->hV:I

    sput v0, Lcom/baidu/location/e/k;->h0:I

    return-void
.end method

.method private b5()V
    .locals 0

    return-void
.end method

.method public static b6()Lcom/baidu/location/e/k;
    .locals 2

    sget-object v0, Lcom/baidu/location/e/k;->h8:Lcom/baidu/location/e/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/k;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/c;->K()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/e/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/e/k;->h8:Lcom/baidu/location/e/k;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/k;->h8:Lcom/baidu/location/e/k;

    return-object v0
.end method

.method public static b7()Ljava/lang/String;
    .locals 10

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/baidu/location/e/k;->if(III)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/e/k;->b2()Z

    return-object v1

    :cond_2
    if-eqz v5, :cond_7

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v5, -0x1

    mul-int/lit16 v6, v6, 0x400

    add-int/lit8 v6, v6, 0xc

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-array v3, v2, [B

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sget v3, Lcom/baidu/location/b/k;->cr:I

    const/4 v6, 0x1

    if-ge v4, v3, :cond_5

    add-int/2addr v5, v6

    goto :goto_2

    :cond_5
    sget v3, Lcom/baidu/location/b/k;->cr:I

    if-ne v5, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/2addr v6, v5

    :goto_1
    move v5, v6

    :goto_2
    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private b8()Z
    .locals 1

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/e/k;->b4()V

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static if(III)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_3

    sget v1, Lcom/baidu/location/b/k;->cr:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_3

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le p1, p0, :cond_1

    goto :goto_0

    :cond_1
    if-lt p2, v1, :cond_3

    if-gt p2, p0, :cond_3

    sget p0, Lcom/baidu/location/b/k;->cr:I

    if-le p2, p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private if(Landroid/location/Location;II)Z
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    sget-boolean v2, Lcom/baidu/location/b/k;->bR:Z

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/baidu/location/e/k;->h6:Z

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object v2

    iget-boolean v2, v2, Lcom/baidu/location/e/f;->gE:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    sget v2, Lcom/baidu/location/b/k;->cB:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    sput v3, Lcom/baidu/location/b/k;->cB:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/baidu/location/b/k;->cB:I

    const/16 v4, 0x3e8

    if-le v2, v4, :cond_2

    sput v4, Lcom/baidu/location/b/k;->cB:I

    :cond_2
    :goto_0
    sget v2, Lcom/baidu/location/b/k;->cF:I

    if-ge v2, v3, :cond_3

    :goto_1
    sput v3, Lcom/baidu/location/b/k;->cF:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/baidu/location/b/k;->cF:I

    const/16 v3, 0xe10

    if-le v2, v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v15, v4, v6

    sget-boolean v4, Lcom/baidu/location/e/k;->hT:Z

    const/4 v12, 0x4

    const/4 v10, 0x3

    const/16 v17, 0x2

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide v20, 0x40f86a0000000000L    # 100000.0

    const/4 v11, 0x1

    if-eqz v4, :cond_5

    sput v11, Lcom/baidu/location/e/k;->hZ:I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "&nr=%s&traj=%d,%.5f,%.5f|"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/baidu/location/e/k;->h4:Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v17

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sput v4, Lcom/baidu/location/e/k;->h7:I

    sput-wide v15, Lcom/baidu/location/e/k;->hS:J

    sput-wide v2, Lcom/baidu/location/e/k;->hW:D

    sput-wide v13, Lcom/baidu/location/e/k;->hX:D

    mul-double v2, v2, v20

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sput-wide v2, Lcom/baidu/location/e/k;->hR:J

    mul-double v13, v13, v20

    add-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sput-wide v2, Lcom/baidu/location/e/k;->h9:J

    sput-boolean v1, Lcom/baidu/location/e/k;->hT:Z

    return v11

    :cond_5
    new-array v8, v11, [F

    sget-wide v22, Lcom/baidu/location/e/k;->hX:D

    sget-wide v24, Lcom/baidu/location/e/k;->hW:D

    move-wide v4, v13

    move-wide v6, v2

    move-object/from16 v26, v8

    move-wide/from16 v8, v22

    move/from16 v22, v11

    move-wide/from16 v10, v24

    move-object/from16 v12, v26

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    sget-wide v4, Lcom/baidu/location/e/k;->hS:J

    sub-long v4, v15, v4

    aget v6, v26, v1

    sget v7, Lcom/baidu/location/b/k;->cB:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_7

    sget v6, Lcom/baidu/location/b/k;->cF:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    sget-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    if-nez v4, :cond_8

    sget v4, Lcom/baidu/location/e/k;->hZ:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/baidu/location/e/k;->hZ:I

    sput v1, Lcom/baidu/location/e/k;->h7:I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "&nr=%s&traj=%d,%.5f,%.5f|"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/baidu/location/e/k;->h4:Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v22

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v17

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sput v4, Lcom/baidu/location/e/k;->h7:I

    sput-wide v15, Lcom/baidu/location/e/k;->hS:J

    sput-wide v2, Lcom/baidu/location/e/k;->hW:D

    sput-wide v13, Lcom/baidu/location/e/k;->hX:D

    mul-double v2, v2, v20

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sput-wide v2, Lcom/baidu/location/e/k;->hR:J

    mul-double v13, v13, v20

    add-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sput-wide v2, Lcom/baidu/location/e/k;->h9:J

    goto :goto_4

    :cond_8
    const/4 v9, 0x3

    sput-wide v2, Lcom/baidu/location/e/k;->hW:D

    sput-wide v13, Lcom/baidu/location/e/k;->hX:D

    mul-double v2, v2, v20

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    mul-double v13, v13, v20

    add-double v13, v13, v18

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    sget-wide v6, Lcom/baidu/location/e/k;->hS:J

    sub-long v6, v15, v6

    long-to-int v6, v6

    sput v6, Lcom/baidu/location/e/k;->hQ:I

    sget-wide v6, Lcom/baidu/location/e/k;->hR:J

    sub-long v6, v2, v6

    long-to-int v6, v6

    sput v6, Lcom/baidu/location/e/k;->hV:I

    sget-wide v6, Lcom/baidu/location/e/k;->h9:J

    sub-long v6, v4, v6

    long-to-int v6, v6

    sput v6, Lcom/baidu/location/e/k;->h0:I

    sget-object v6, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "%d,%d,%d|"

    new-array v9, v9, [Ljava/lang/Object;

    sget v10, Lcom/baidu/location/e/k;->hQ:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    sget v10, Lcom/baidu/location/e/k;->hV:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v22

    sget v10, Lcom/baidu/location/e/k;->h0:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v17

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    sput v6, Lcom/baidu/location/e/k;->h7:I

    sput-wide v15, Lcom/baidu/location/e/k;->hS:J

    sput-wide v2, Lcom/baidu/location/e/k;->hR:J

    sput-wide v4, Lcom/baidu/location/e/k;->h9:J

    :goto_4
    sget v2, Lcom/baidu/location/e/k;->h7:I

    add-int/lit8 v2, v2, 0xf

    const/16 v3, 0x2ee

    if-le v2, v3, :cond_9

    sget-object v2, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/location/e/k;->u(Ljava/lang/String;)Z

    const/4 v2, 0x0

    sput-object v2, Lcom/baidu/location/e/k;->hM:Ljava/lang/StringBuffer;

    :cond_9
    sget v2, Lcom/baidu/location/e/k;->hZ:I

    sget v3, Lcom/baidu/location/b/k;->cr:I

    if-lt v2, v3, :cond_a

    iput-boolean v1, v0, Lcom/baidu/location/e/k;->h6:Z

    :cond_a
    return v22

    :cond_b
    :goto_5
    return v1
.end method

.method private try(I)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/baidu/location/e/k;->if(III)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/e/k;->b2()Z

    return-object v1

    :cond_1
    if-eqz p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0xc

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x400

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    new-array v4, p1, [B

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method private u(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const-string v1, "&nr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    sget-object v1, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/baidu/location/e/k;->b2()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/e/k;->hO:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/baidu/location/e/k;->if(III)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/e/k;->b2()Z

    return v0

    :cond_2
    sget-boolean v7, Lcom/baidu/location/b/k;->bK:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    sget v7, Lcom/baidu/location/b/k;->cr:I

    if-eq v4, v7, :cond_3

    if-le v6, v8, :cond_5

    add-int/lit8 v7, v6, -0x1

    invoke-direct {p0, v7}, Lcom/baidu/location/e/k;->try(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return v0

    :cond_3
    if-ne v6, v8, :cond_4

    sget v7, Lcom/baidu/location/b/k;->cr:I

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v6, -0x1

    :goto_0
    invoke-direct {p0, v7}, Lcom/baidu/location/e/k;->try(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return v0

    :cond_5
    add-int/lit8 v7, v6, -0x1

    mul-int/lit16 v7, v7, 0x400

    add-int/lit8 v7, v7, 0xc

    int-to-long v9, v7

    add-long/2addr v9, v2

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x2ee

    if-le v7, v9, :cond_6

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return v0

    :cond_6
    invoke-static {p1}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x3fc

    if-le v7, v9, :cond_7

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return v0

    :cond_7
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const/4 p1, 0x2

    if-nez v4, :cond_8

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto/16 :goto_6

    :cond_8
    sget v7, Lcom/baidu/location/b/k;->cr:I

    sub-int/2addr v7, v8

    const-wide/16 v9, 0x8

    if-ge v4, v7, :cond_9

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/2addr v4, p1

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_6

    :cond_9
    sget v7, Lcom/baidu/location/b/k;->cr:I

    sub-int/2addr v7, v8

    if-ne v4, v7, :cond_c

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v2, Lcom/baidu/location/b/k;->cr:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-eqz v5, :cond_a

    if-ne v5, v8, :cond_b

    :cond_a
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_b
    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_6

    :cond_c
    const-wide/16 v2, 0x4

    if-ne v6, v5, :cond_f

    sget p1, Lcom/baidu/location/b/k;->cr:I

    if-ne v6, p1, :cond_d

    move p1, v8

    goto :goto_2

    :cond_d
    add-int/lit8 p1, v6, 0x1

    :goto_2
    sget v4, Lcom/baidu/location/b/k;->cr:I

    if-ne p1, v4, :cond_e

    move v4, v8

    goto :goto_3

    :cond_e
    add-int/lit8 v4, p1, 0x1

    :goto_3
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_1

    :cond_f
    sget p1, Lcom/baidu/location/b/k;->cr:I

    if-ne v6, p1, :cond_10

    move p1, v8

    goto :goto_4

    :cond_10
    add-int/lit8 p1, v6, 0x1

    :goto_4
    if-ne p1, v5, :cond_12

    sget v4, Lcom/baidu/location/b/k;->cr:I

    if-ne p1, v4, :cond_11

    move v4, v8

    goto :goto_5

    :cond_11
    add-int/lit8 v4, p1, 0x1

    :goto_5
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_12
    invoke-virtual {v1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :goto_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    :cond_13
    :goto_7
    return v0
.end method


# virtual methods
.method public b9()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/e/k;->b3()V

    return-void
.end method

.method public try(Landroid/location/Location;)Z
    .locals 2

    sget v0, Lcom/baidu/location/b/k;->cB:I

    sget v1, Lcom/baidu/location/b/k;->cF:I

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/location/e/k;->if(Landroid/location/Location;II)Z

    move-result p1

    return p1
.end method
