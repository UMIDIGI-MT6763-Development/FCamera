.class public Lcom/baidu/location/h/b;
.super Lcom/baidu/location/h/j;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/h/b$a;
    }
.end annotation


# static fields
.field public static final j0:J = 0xbb8L

.field private static j1:Ljava/lang/reflect/Method; = null

.field private static j2:Ljava/lang/Class; = null

.field public static final j3:I = 0x3

.field private static j6:Ljava/lang/reflect/Method;

.field private static j7:Lcom/baidu/location/h/b;

.field private static j8:Ljava/lang/reflect/Method;

.field private static jS:Ljava/lang/reflect/Method;

.field private static jT:Ljava/lang/reflect/Method;

.field public static jW:I

.field public static jY:I


# instance fields
.field private j4:Ljava/util/List;

.field private j5:Lcom/baidu/location/h/b$a;

.field private jR:Landroid/telephony/TelephonyManager;

.field private jU:Lcom/baidu/location/h/h;

.field private jV:Z

.field private jX:Lcom/baidu/location/h/h;

.field private jZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/location/h/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/baidu/location/h/h;

    invoke-direct {v1}, Lcom/baidu/location/h/h;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iput-object v0, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    iput-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/h/b;->jV:Z

    iput-boolean v0, p0, Lcom/baidu/location/h/b;->jZ:Z

    return-void
.end method

.method private byte(Lcom/baidu/location/h/h;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "&nc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/baidu/location/h/b;->if(Landroid/telephony/CellInfo;)Lcom/baidu/location/h/h;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget v3, v2, Lcom/baidu/location/h/h;->ku:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/baidu/location/h/h;->ky:I

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/baidu/location/h/h;->ku:I

    iget v4, v2, Lcom/baidu/location/h/h;->ku:I

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/baidu/location/h/h;->ky:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/baidu/location/h/h;->kz:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/baidu/location/h/h;->ky:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/baidu/location/h/h;->kz:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cS()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/location/b/k;->ah()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lcvif.dat"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0xea60

    cmp-long v5, v7, v5

    if-lez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    const/4 v15, 0x1

    if-ne v9, v15, :cond_2

    const/16 v14, 0x67

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ne v9, v5, :cond_3

    const/16 v5, 0x63

    goto :goto_2

    :cond_3
    move v5, v14

    :goto_2
    cmp-long v9, v7, v3

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    new-instance v14, Lcom/baidu/location/h/h;

    const/16 v16, 0x0

    move-object v9, v14

    move-object v3, v14

    move/from16 v14, v16

    move v4, v15

    move v15, v5

    invoke-direct/range {v9 .. v15}, Lcom/baidu/location/h/h;-><init>(IIIIIC)V

    iput-wide v7, v3, Lcom/baidu/location/h/h;->kw:J

    invoke-virtual {v3}, Lcom/baidu/location/h/h;->ds()Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v4, v0, Lcom/baidu/location/h/b;->jZ:Z

    iget-object v4, v0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_7
    :goto_4
    return-void
.end method

.method private cT()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/h/b;->cX()Lcom/baidu/location/h/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/baidu/location/h/b;->try(Lcom/baidu/location/h/h;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/h/b;->do(Landroid/telephony/CellLocation;)Lcom/baidu/location/h/h;

    :cond_2
    return-void
.end method

.method public static cU()Lcom/baidu/location/h/b;
    .locals 1

    sget-object v0, Lcom/baidu/location/h/b;->j7:Lcom/baidu/location/h/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/h/b;

    invoke-direct {v0}, Lcom/baidu/location/h/b;-><init>()V

    sput-object v0, Lcom/baidu/location/h/b;->j7:Lcom/baidu/location/h/b;

    :cond_0
    sget-object v0, Lcom/baidu/location/h/b;->j7:Lcom/baidu/location/h/b;

    return-object v0
.end method

.method private cW()V
    .locals 9

    iget-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/baidu/location/b/k;->ah()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lcvif.dat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/h/h;

    iget-wide v5, v1, Lcom/baidu/location/h/h;->kw:J

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    const/4 v6, 0x3

    rsub-int/lit8 v7, v0, 0x3

    const/4 v8, 0x2

    if-ge v5, v7, :cond_4

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v1, v0, :cond_7

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget-wide v3, v3, Lcom/baidu/location/h/h;->kw:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget v3, v3, Lcom/baidu/location/h/h;->kB:I

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget v3, v3, Lcom/baidu/location/h/h;->kC:I

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget v3, v3, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget v3, v3, Lcom/baidu/location/h/h;->ky:I

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget-char v3, v3, Lcom/baidu/location/h/h;->kA:C

    const/16 v4, 0x67

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget-char v3, v3, Lcom/baidu/location/h/h;->kA:C

    const/16 v4, 0x63

    if-ne v3, v4, :cond_6

    invoke-virtual {v2, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private cX()Lcom/baidu/location/h/h;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/baidu/location/h/b;->if(Landroid/telephony/CellInfo;)Lcom/baidu/location/h/h;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/baidu/location/h/h;->dr()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_1
    return-object v1

    :catch_0
    :cond_4
    move-object v1, v2

    :catch_1
    :cond_5
    return-object v1
.end method

.method private do(Landroid/telephony/CellLocation;)Lcom/baidu/location/h/h;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Lcom/baidu/location/h/h;

    invoke-direct {v1}, Lcom/baidu/location/h/h;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/h/h;->kw:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_2

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v5, v5, Lcom/baidu/location/h/h;->kB:I

    :cond_1
    iput v5, v1, Lcom/baidu/location/h/h;->kB:I

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v6, v3

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_5

    aget-char v7, v5, v6

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v6, v3

    :cond_5
    :goto_1
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v4, v4, Lcom/baidu/location/h/h;->kC:I

    :cond_6
    iput v4, v1, Lcom/baidu/location/h/h;->kC:I

    :cond_7
    iget-object v4, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    sput v4, Lcom/baidu/location/h/b;->jY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v4, 0x1

    sput v4, Lcom/baidu/location/h/b;->jW:I

    :goto_2
    instance-of v4, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_8

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v1, Lcom/baidu/location/h/h;->ky:I

    const/16 p1, 0x67

    iput-char p1, v1, Lcom/baidu/location/h/h;->kA:C

    goto/16 :goto_4

    :cond_8
    instance-of v4, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_d

    const/16 v4, 0x63

    iput-char v4, v1, Lcom/baidu/location/h/h;->kA:C

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_9

    return-object v1

    :cond_9
    sget-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    if-nez v4, :cond_a

    :try_start_1
    const-string v4, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    sget-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    const-string v5, "getBaseStationId"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/h/b;->j6:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    const-string v5, "getNetworkId"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/h/b;->jT:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    const-string v5, "getSystemId"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/h/b;->j1:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    const-string v5, "getBaseStationLatitude"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/h/b;->jS:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    const-string v5, "getBaseStationLongitude"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/baidu/location/h/b;->j8:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    sput-object v0, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    const/4 p1, 0x2

    sput p1, Lcom/baidu/location/h/b;->jW:I

    return-object v1

    :cond_a
    :goto_3
    sget-object v0, Lcom/baidu/location/h/b;->j2:Ljava/lang/Class;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_2
    sget-object v0, Lcom/baidu/location/h/b;->j1:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v0, v0, Lcom/baidu/location/h/h;->kC:I

    :cond_b
    iput v0, v1, Lcom/baidu/location/h/h;->kC:I

    sget-object v0, Lcom/baidu/location/h/b;->j6:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/h/h;->ky:I

    sget-object v0, Lcom/baidu/location/h/b;->jT:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/h/h;->ku:I

    sget-object v0, Lcom/baidu/location/h/b;->jS:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7fffffff

    if-ge v4, v5, :cond_c

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/h/h;->kD:I

    :cond_c
    sget-object v0, Lcom/baidu/location/h/b;->j8:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_d

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Lcom/baidu/location/h/h;->kx:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    sput v2, Lcom/baidu/location/h/b;->jW:I

    return-object v1

    :cond_d
    :goto_4
    invoke-direct {p0, v1}, Lcom/baidu/location/h/b;->try(Lcom/baidu/location/h/h;)V

    return-object v1

    :cond_e
    :goto_5
    return-object v0
.end method

.method static synthetic do(Lcom/baidu/location/h/b;)Lcom/baidu/location/h/h;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    return-object p0
.end method

.method private if(Landroid/telephony/CellInfo;)Lcom/baidu/location/h/h;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/baidu/location/h/h;

    invoke-direct {v1}, Lcom/baidu/location/h/h;-><init>()V

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/telephony/CellInfoGsm;

    const/4 v4, 0x1

    const/16 v5, 0x67

    if-eqz v3, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kB:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kC:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/h/b;->void(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/h/h;->ky:I

    iput-char v5, v1, Lcom/baidu/location/h/h;->kA:C

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/baidu/location/h/h;->kz:I

    goto/16 :goto_1

    :cond_1
    instance-of v3, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kD:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kx:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kC:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/h/b;->void(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/h/h;->ky:I

    const/16 v3, 0x63

    iput-char v3, v1, Lcom/baidu/location/h/h;->kA:C

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kB:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->kC:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/h/b;->void(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/h/b;->void(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/h/h;->ky:I

    iput-char v5, v1, Lcom/baidu/location/h/h;->kA:C

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v2

    goto/16 :goto_0

    :cond_3
    move v4, v2

    :goto_1
    const/16 v2, 0x12

    if-lt v0, v2, :cond_4

    if-nez v4, :cond_4

    :try_start_0
    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/h/b;->void(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/h/h;->kB:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/h/b;->void(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/h/h;->kC:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/h/b;->void(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/h/b;->void(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/location/h/h;->ky:I

    iput-char v5, v1, Lcom/baidu/location/h/h;->kA:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/h/h;->kz:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v1, Lcom/baidu/location/h/h;->kw:J
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/h/h;->kw:J

    :goto_2
    return-object v1
.end method

.method static synthetic if(Lcom/baidu/location/h/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/h/b;->cT()V

    return-void
.end method

.method private try(Lcom/baidu/location/h/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/location/h/h;->case(Lcom/baidu/location/h/h;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    invoke-virtual {p1}, Lcom/baidu/location/h/h;->ds()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/location/h/h;

    :goto_0
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/baidu/location/h/h;->ky:I

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v1, v1, Lcom/baidu/location/h/h;->ky:I

    if-ne v0, v1, :cond_2

    iget p1, p1, Lcom/baidu/location/h/h;->ku:I

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v0, v0, Lcom/baidu/location/h/h;->ku:I

    if-eq p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/baidu/location/h/b;->cW()V

    iput-boolean v1, p0, Lcom/baidu/location/h/b;->jZ:Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_5
    :goto_1
    return-void
.end method

.method private void(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public cM()Lcom/baidu/location/h/h;
    .locals 8

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->du()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/h/b;->cT()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->dy()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    new-instance v0, Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v2, v1, Lcom/baidu/location/h/h;->ku:I

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v3, v1, Lcom/baidu/location/h/h;->ky:I

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v4, v1, Lcom/baidu/location/h/h;->kB:I

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v5, v1, Lcom/baidu/location/h/h;->kC:I

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget v6, v1, Lcom/baidu/location/h/h;->kz:I

    iget-object v1, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget-char v7, v1, Lcom/baidu/location/h/h;->kA:C

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/location/h/h;-><init>(IIIIIC)V

    iput-object v0, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->dB()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget-char v0, v0, Lcom/baidu/location/h/h;->kA:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    iget v1, v1, Lcom/baidu/location/h/h;->kC:I

    iput v1, v0, Lcom/baidu/location/h/h;->kC:I

    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/h/b;->jU:Lcom/baidu/location/h/h;

    iget v1, v1, Lcom/baidu/location/h/h;->kB:I

    iput v1, v0, Lcom/baidu/location/h/h;->kB:I

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/h/b;->jX:Lcom/baidu/location/h/h;

    return-object v0
.end method

.method public declared-synchronized cN()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/h/b;->jV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    new-instance v0, Lcom/baidu/location/h/b$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/h/b$a;-><init>(Lcom/baidu/location/h/b;)V

    iput-object v0, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;

    invoke-direct {p0}, Lcom/baidu/location/h/b;->cS()V

    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;

    const/16 v3, 0x110

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    iput-boolean v1, p0, Lcom/baidu/location/h/b;->jV:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cO()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public cP()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method public cQ()I
    .locals 2

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized cR()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/h/b;->jV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/h/b;->j5:Lcom/baidu/location/h/b$a;

    iput-object v0, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/h/b;->cW()V

    iput-boolean v1, p0, Lcom/baidu/location/h/b;->jV:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/h/b;->jZ:Z

    return v0
.end method

.method public int(Lcom/baidu/location/h/h;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/location/h/b;->byte(Lcom/baidu/location/h/h;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&nc="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/h/b;->jR:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "&nc="

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    if-eq v6, v5, :cond_3

    iget v5, p1, Lcom/baidu/location/h/h;->ku:I

    if-eq v5, v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const-string p1, "&nc="

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    return-object v0
.end method

.method public new(Lcom/baidu/location/h/h;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&nw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p1, Lcom/baidu/location/h/h;->kA:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/baidu/location/h/h;->kB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p1, Lcom/baidu/location/h/h;->kC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget v4, p1, Lcom/baidu/location/h/h;->ku:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget v4, p1, Lcom/baidu/location/h/h;->ky:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    iget v4, p1, Lcom/baidu/location/h/h;->kz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/baidu/location/h/h;->kD:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_0

    iget v1, p1, Lcom/baidu/location/h/h;->kx:I

    if-ge v1, v2, :cond_0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cdmall=%.6f|%.6f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p1, Lcom/baidu/location/h/h;->kx:I

    int-to-double v7, v4

    const-wide v9, 0x40cc200000000000L    # 14400.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lcom/baidu/location/h/h;->kD:I

    int-to-double v7, v4

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "&cl_t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p1, Lcom/baidu/location/h/h;->kw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "&clt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/baidu/location/h/b;->j4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/h/h;

    iget v4, v3, Lcom/baidu/location/h/h;->kB:I

    iget v6, p1, Lcom/baidu/location/h/h;->kB:I

    if-eq v4, v6, :cond_1

    iget v4, v3, Lcom/baidu/location/h/h;->kB:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v3, Lcom/baidu/location/h/h;->kC:I

    iget v6, p1, Lcom/baidu/location/h/h;->kC:I

    if-eq v4, v6, :cond_2

    iget v4, v3, Lcom/baidu/location/h/h;->kC:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v3, Lcom/baidu/location/h/h;->ku:I

    iget v6, p1, Lcom/baidu/location/h/h;->ku:I

    if-eq v4, v6, :cond_3

    iget v4, v3, Lcom/baidu/location/h/h;->ku:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v3, Lcom/baidu/location/h/h;->ky:I

    iget v6, p1, Lcom/baidu/location/h/h;->ky:I

    if-eq v4, v6, :cond_4

    iget v4, v3, Lcom/baidu/location/h/h;->ky:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v3, v3, Lcom/baidu/location/h/h;->kw:J

    sub-long/2addr v6, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v6, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget p1, Lcom/baidu/location/h/b;->jY:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_6

    sput v5, Lcom/baidu/location/h/b;->jY:I

    :cond_6
    sget p1, Lcom/baidu/location/h/b;->jW:I

    shl-int/lit8 p1, p1, 0x8

    sget v1, Lcom/baidu/location/h/b;->jY:I

    add-int/2addr v1, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cs="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
