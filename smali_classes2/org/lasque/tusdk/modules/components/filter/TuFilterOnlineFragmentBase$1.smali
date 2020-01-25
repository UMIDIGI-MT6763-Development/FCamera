.class Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterPackageStatusChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    return-void
.end method
