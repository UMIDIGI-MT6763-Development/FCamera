.class public final enum Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrushAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ActionEdit:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

.field public static final enum ActionNormal:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

.field private static final synthetic a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    const-string v1, "ActionNormal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    const-string v1, "ActionEdit"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->ActionEdit:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->ActionEdit:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->a:[Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    return-object v0
.end method
