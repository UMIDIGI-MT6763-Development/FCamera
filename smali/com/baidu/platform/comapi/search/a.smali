.class public Lcom/baidu/platform/comapi/search/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/baidu/mapapi/model/inner/Point;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/platform/comapi/search/a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput-object v0, p0, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    return-void
.end method
