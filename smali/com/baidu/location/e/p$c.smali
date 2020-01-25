.class public Lcom/baidu/location/e/p$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/e/p;

.field private do:J

.field public if:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/baidu/location/e/p;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/e/p$c;->a:Lcom/baidu/location/e/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/e/p$c;->do:J

    iput-object p2, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/location/e/p$c;->do:J

    invoke-direct {p0}, Lcom/baidu/location/e/p$c;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    invoke-virtual {p0}, Lcom/baidu/location/e/p$c;->if()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-lt v0, v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    iget-object v5, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v5, :cond_1

    iget-object v3, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v2, v3

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Lcom/baidu/location/e/p$c;->if()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v7, v5

    move v6, v4

    :goto_0
    if-ge v5, v2, :cond_5

    iget-object v8, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget v8, v8, Landroid/net/wifi/ScanResult;->level:I

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    const-string v6, "&wf="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v3

    goto :goto_1

    :cond_2
    const-string v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v8, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget v8, v8, Landroid/net/wifi/ScanResult;->level:I

    if-gez v8, :cond_3

    neg-int v8, v8

    :cond_3
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v10, ";%d;"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v3

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    if-le v7, p1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/p$c;->if:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
