.class public final enum Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TuSdkRefreshState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum StateHidden:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

.field public static final enum StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

.field public static final enum StateTriggered:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

.field public static final enum StateVisible:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    const-string v1, "StateHidden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateHidden:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    const-string v1, "StateVisible"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateVisible:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    const-string v1, "StateTriggered"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateTriggered:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    const-string v1, "StateLoading"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateHidden:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateVisible:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateTriggered:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->a:[Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->a:[Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-object v0
.end method
