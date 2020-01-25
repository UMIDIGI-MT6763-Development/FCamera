.class public final enum Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupFilterAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field public static final enum ActionEdit:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field public static final enum ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field private static final synthetic b:[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    const-string v1, "ActionNormal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    const-string v1, "ActionEdit"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionEdit:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    const-string v1, "ActionCamera"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionEdit:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->b:[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->b:[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->a:I

    return v0
.end method
