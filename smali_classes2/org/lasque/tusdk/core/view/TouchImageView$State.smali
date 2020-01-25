.class final enum Lorg/lasque/tusdk/core/view/TouchImageView$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/view/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANIMATE_ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

.field public static final enum DRAG:Lorg/lasque/tusdk/core/view/TouchImageView$State;

.field public static final enum FLING:Lorg/lasque/tusdk/core/view/TouchImageView$State;

.field public static final enum NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

.field public static final enum ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/view/TouchImageView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    const-string v1, "DRAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->DRAG:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    const-string v1, "ZOOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    const-string v1, "FLING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->FLING:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    const-string v1, "ANIMATE_ZOOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->ANIMATE_ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/core/view/TouchImageView$State;

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->DRAG:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->FLING:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->ANIMATE_ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->a:[Lorg/lasque/tusdk/core/view/TouchImageView$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/view/TouchImageView$State;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/view/TouchImageView$State;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/view/TouchImageView$State;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->a:[Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/view/TouchImageView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/view/TouchImageView$State;

    return-object v0
.end method
