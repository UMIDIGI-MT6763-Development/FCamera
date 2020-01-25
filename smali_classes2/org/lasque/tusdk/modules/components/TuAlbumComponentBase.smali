.class public abstract Lorg/lasque/tusdk/modules/components/TuAlbumComponentBase;
.super Lorg/lasque/tusdk/modules/components/TuSdkComponent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/TuSdkComponent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "vatar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->avatarComponent:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->albumComponent:J

    :goto_0
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
