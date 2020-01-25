.class Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncVideoMixTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Double;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->cancel(Z)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->f(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->onStopeed()V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->onStopeed()V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->g(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$AsyncVideoMixTask;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v1, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    return-void
.end method
