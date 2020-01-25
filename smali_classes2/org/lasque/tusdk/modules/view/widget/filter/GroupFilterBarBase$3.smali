.class synthetic Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->values()[Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->b:[I

    sget-object v2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowned:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->b:[I

    sget-object v3, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusRemoved:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->values()[Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->a:[I

    :try_start_2
    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->a:[I

    sget-object v3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->a:[I

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHistory:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->a:[I

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
