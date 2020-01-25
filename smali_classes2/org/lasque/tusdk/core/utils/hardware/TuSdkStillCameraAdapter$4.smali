.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->switchFilter(Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->d(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    move-result-object v1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$4;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method
