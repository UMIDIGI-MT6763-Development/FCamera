.class public Lorg/lasque/tusdk/modules/components/album/TuAlbumMultiplePreviewFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->photoListPreviewFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
