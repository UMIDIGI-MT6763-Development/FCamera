.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/impl/view/widget/RegionHandler$RegionChangerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->changeRegionRatio(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegionChanged(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;)Lorg/lasque/tusdk/core/seles/output/SelesSmartView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setDisplayRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$2;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->getFocusTouchView()Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkVideoCameraExtendViewInterface;->setRegionPercent(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
