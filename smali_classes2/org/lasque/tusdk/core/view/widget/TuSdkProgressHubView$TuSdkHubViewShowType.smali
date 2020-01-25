.class public final enum Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TuSdkHubViewShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeDefault:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

.field public static final enum TypeFailed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

.field public static final enum TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

.field public static final enum TypeSucceed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const-string v1, "TypeDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeDefault:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const-string v1, "TypeSucceed"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeSucceed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const-string v1, "TypeFailed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeFailed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const-string v1, "TypeImage"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeDefault:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeSucceed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeFailed:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeImage:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->a:[Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->a:[Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    return-object v0
.end method
