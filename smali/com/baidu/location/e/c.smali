.class public Lcom/baidu/location/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/c$a;
    }
.end annotation


# static fields
.field private static go:Lcom/baidu/location/e/c;


# instance fields
.field private gm:Z

.field private gn:Ljava/util/ArrayList;

.field public gp:Z

.field private gq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/c;->gq:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/c;->gm:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/c;->gp:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    return-void
.end method

.method private bl()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/e/c;->bo()V

    invoke-virtual {p0}, Lcom/baidu/location/e/c;->bq()V

    return-void
.end method

.method private bo()V
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/e/c$a;

    iget-object v4, v3, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->openGps:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v2, v5

    :cond_1
    iget-object v3, v3, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v3, v3, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_2
    sput-boolean v1, Lcom/baidu/location/b/k;->cm:Z

    iget-boolean v0, p0, Lcom/baidu/location/e/c;->gq:Z

    if-eq v0, v2, :cond_3

    iput-boolean v2, p0, Lcom/baidu/location/e/c;->gq:Z

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/e/c;->gq:Z

    invoke-virtual {v0, v1}, Lcom/baidu/location/h/g;->else(Z)V

    :cond_3
    return-void
.end method

.method public static bp()Lcom/baidu/location/e/c;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/c;->go:Lcom/baidu/location/e/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/c;

    invoke-direct {v0}, Lcom/baidu/location/e/c;-><init>()V

    sput-object v0, Lcom/baidu/location/e/c;->go:Lcom/baidu/location/e/c;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/c;->go:Lcom/baidu/location/e/c;

    return-object v0
.end method

.method private if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/e/c$a;

    iget-object v3, v2, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private if(Lcom/baidu/location/e/c$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/e/c;->if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xd

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/e/c$a;I)V

    return-void
.end method


# virtual methods
.method public bj()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-virtual {v1}, Lcom/baidu/location/e/c$a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bk()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-virtual {v1}, Lcom/baidu/location/e/c$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/c;->gp:Z

    return v0
.end method

.method public bn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/c;->gq:Z

    return v0
.end method

.method public bq()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-virtual {v1}, Lcom/baidu/location/e/c$a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public br()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/baidu/location/e/c;->bl()V

    return-void
.end method

.method public bs()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/b/c;->bj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    iget-object v2, v1, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, v1, Lcom/baidu/location/e/c$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/baidu/location/e/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public case(Landroid/os/Message;)I
    .locals 2

    const/16 v0, 0x3e8

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/baidu/location/e/c;->if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget p1, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public char(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/baidu/location/e/c;->if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/e/i;->bW()Lcom/baidu/location/e/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/i;->bY()V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->cf()V

    invoke-direct {p0}, Lcom/baidu/location/e/c;->bl()V

    return-void
.end method

.method public do(Lcom/baidu/location/BDLocation;I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/BDLocation;I)V

    iget v1, v1, Lcom/baidu/location/e/c$a;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public else(Landroid/os/Message;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/baidu/location/e/c;->if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget p1, p1, Lcom/baidu/location/LocationClientOption;->priority:I

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public goto(Landroid/os/Message;)Z
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/e/c;->if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget-object v3, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scanSpan"

    iget-object v6, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v6, v6, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget-object v3, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_1

    invoke-static {}, Lcom/baidu/location/e/i;->bW()Lcom/baidu/location/e/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/e/i;->bT()V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/e/l;->cf()V

    iput-boolean v1, p0, Lcom/baidu/location/e/c;->gp:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/location/e/i;->bW()Lcom/baidu/location/e/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/e/i;->bU()V

    iput-boolean v4, p0, Lcom/baidu/location/e/c;->gp:Z

    :goto_0
    iget-object v3, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v6, 0x3e7

    if-le v3, v6, :cond_4

    if-ge v2, v5, :cond_4

    iget-object v1, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    invoke-virtual {v1, v2}, Lcom/baidu/location/e/l;->case(Z)V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    invoke-virtual {v1, v2}, Lcom/baidu/location/e/l;->char(Z)V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/l;->cc()V

    :cond_3
    move v1, v4

    :cond_4
    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openGPS"

    iget-object v5, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->openGps:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/location/LocationClientOption;->openGps:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "coorType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_5

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    :goto_1
    iput-object v2, v3, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "addrType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_6

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    :goto_2
    iput-object v2, v3, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/e/m;->bd()V

    :cond_7
    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timeOut"

    iget-object v5, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v5, v5, Lcom/baidu/location/LocationClientOption;->timeOut:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/baidu/location/LocationClientOption;->timeOut:I

    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location_change_notify"

    iget-object v5, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iget-object v2, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "priority"

    iget-object v0, v0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->priority:I

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v2, Lcom/baidu/location/LocationClientOption;->priority:I

    invoke-direct {p0}, Lcom/baidu/location/e/c;->bl()V

    return v1
.end method

.method public if(Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-static {v1, p2, p1}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/e/c$a;ILandroid/os/Bundle;)V

    iget v1, v1, Lcom/baidu/location/e/c$a;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, p2}, Lcom/baidu/location/e/c;->if(Landroid/os/Messenger;)Lcom/baidu/location/e/c$a;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/BDLocation;)V

    iget p1, p2, Lcom/baidu/location/e/c$a;->d:I

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/location/e/m;->new(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/Address;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/m;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/e/m;->be()Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/e/c$a;->b(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public long(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/baidu/location/e/c$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/e/c$a;-><init>(Lcom/baidu/location/e/c;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/baidu/location/e/c;->if(Lcom/baidu/location/e/c$a;)V

    invoke-direct {p0}, Lcom/baidu/location/e/c;->bl()V

    :cond_1
    :goto_0
    return-void
.end method

.method public try(Lcom/baidu/location/BDLocation;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e/c;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/e/c$a;

    invoke-virtual {v1, p1}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v1, v1, Lcom/baidu/location/e/c$a;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method
