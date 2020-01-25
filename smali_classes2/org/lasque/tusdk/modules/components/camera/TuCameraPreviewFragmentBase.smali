.class public abstract Lorg/lasque/tusdk/modules/components/camera/TuCameraPreviewFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->cameraPreviewFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
