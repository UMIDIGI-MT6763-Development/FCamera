.class public abstract Lorg/lasque/tusdk/modules/components/TuEditMultipleComponentBase;
.super Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/TuSdkInputComponent;-><init>(Landroid/app/Activity;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editMultipleComponent:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
