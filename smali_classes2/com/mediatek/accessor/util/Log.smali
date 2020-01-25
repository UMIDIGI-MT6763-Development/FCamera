.class public Lcom/mediatek/accessor/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final BUILD_TYPE:Ljava/lang/String;

.field private static final CUST_LOG_LEVEL:I

.field private static final CUST_LOG_LEVEL_D:I = 0x1

.field private static final CUST_LOG_LEVEL_E:I = 0x4

.field private static final CUST_LOG_LEVEL_I:I = 0x2

.field private static final CUST_LOG_LEVEL_V:I = 0x0

.field private static final CUST_LOG_LEVEL_W:I = 0x3

.field private static final IS_ENG:Z

.field private static final LOGTAG_PREFIX:Ljava/lang/String; = "Xmp/"

.field private static final LOG_LEVEL_IN_PROPERTY:I

.field private static final TAG:Ljava/lang/String; = "Xmp/Log"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.build.type"

    invoke-static {v0}, Lcom/mediatek/accessor/util/SystemPropertyUtils;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/Log;->BUILD_TYPE:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Lcom/mediatek/accessor/util/Log;->BUILD_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    const-string v0, "debug.gallery.loglevel"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/SystemPropertyUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mediatek/accessor/util/Log;->LOG_LEVEL_IN_PROPERTY:I

    sget v0, Lcom/mediatek/accessor/util/Log;->LOG_LEVEL_IN_PROPERTY:I

    if-ltz v0, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput v0, Lcom/mediatek/accessor/util/Log;->CUST_LOG_LEVEL:I

    const-string v0, "Xmp/Log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUILD_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/accessor/util/Log;->BUILD_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", IS_ENG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", CUST_LOG_LEVEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mediatek/accessor/util/Log;->CUST_LOG_LEVEL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Tag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Xmp/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private static enableCustLog(I)Z
    .locals 3

    sget v0, Lcom/mediatek/accessor/util/Log;->CUST_LOG_LEVEL:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/mediatek/accessor/util/Log;->IS_ENG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->enableCustLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method
