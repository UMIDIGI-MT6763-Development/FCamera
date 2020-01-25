.class public final enum Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupFilterItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

.field public static final enum TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

.field public static final enum TypeHistory:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

.field public static final enum TypeHolder:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

.field public static final enum TypeOnline:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

.field private static final synthetic a:[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const-string v1, "TypeHolder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHolder:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const-string v1, "TypeFilter"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const-string v1, "TypeGroup"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const-string v1, "TypeHistory"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHistory:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const-string v1, "TypeOnline"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHolder:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHistory:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->a:[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->a:[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    return-object v0
.end method
