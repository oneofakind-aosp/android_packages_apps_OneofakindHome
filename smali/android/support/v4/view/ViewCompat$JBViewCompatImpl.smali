.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1324
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1398
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1351
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1388
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1383
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1403
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1327
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1336
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1339
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 1340
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1343
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1347
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatJB;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1348
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1393
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJB;->requestApplyInsets(Landroid/view/View;)V

    .line 1394
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 1358
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1359
    const/4 p2, 0x2

    .line 1361
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1362
    return-void
.end method
