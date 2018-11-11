func testDidTapSignIn_givenSuccessfulResponseFromNetwork_shouldPresentApplicationController() {
    dependencies.networkServiceMock.getUserReturnValue = Observable.just(User.mock)
        
    sut.didTapSignInButton()
        
    XCTAssertEqual(router.showHudCallsCount, 1)
    XCTAssertEqual(router.hideHudCallsCount, 1)
    XCTAssertEqual(router.showApplicationControllerCallsCount, 1)
}
