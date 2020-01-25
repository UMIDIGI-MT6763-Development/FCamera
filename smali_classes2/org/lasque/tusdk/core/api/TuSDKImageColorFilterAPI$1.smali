.class Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI$1;
.super Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI$1;->a:Lorg/lasque/tusdk/core/api/TuSDKImageColorFilterAPI;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;-><init>()V

    return-object v0
.end method
