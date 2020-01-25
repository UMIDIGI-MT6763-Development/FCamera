.class public abstract Lorg/lasque/tusdk/modules/components/TuAlbumMultipleComponentBase;
.super Lorg/lasque/tusdk/modules/components/TuSdkComponent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;-><init>(Landroid/app/Activity;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->albumMultipleComponent:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
