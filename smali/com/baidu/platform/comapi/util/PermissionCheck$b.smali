.class public Lcom/baidu/platform/comapi/util/PermissionCheck$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/util/PermissionCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->a:I

    const-string v0, "-1"

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->b:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "errorcode: %d uid: %s appid %s msg: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->b:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->c:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/baidu/platform/comapi/util/PermissionCheck$b;->d:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
