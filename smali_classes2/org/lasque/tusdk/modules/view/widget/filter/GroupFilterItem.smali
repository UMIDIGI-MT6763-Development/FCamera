.class public Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;
    }
.end annotation


# static fields
.field public static Backgroud_History:I

.field public static Backgroud_Online:I

.field public static Backgroud_Orgin:I


# instance fields
.field public filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

.field public filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

.field public isInActingType:Z

.field public type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ff6633"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->Backgroud_History:I

    const-string v0, "#FF5534"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->Backgroud_Online:I

    const-string v0, "#A1835D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->Backgroud_Orgin:I

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    return-void
.end method

.method public static create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)V

    return-object v0
.end method

.method public static createWithFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v0

    iput-object p0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    return-object v0
.end method

.method public static createWithGroup(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v0

    iput-object p0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    return-object v0
.end method


# virtual methods
.method public getFilterCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "Normal"

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
