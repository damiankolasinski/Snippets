func testDidTapSignIn_givenSuccessfulResponseFromNetwork_shouldPresentHomeController() {
    dependencies.networkServiceMock.getUserReturnValue = .success(User.mock)
        
    sut.didTapSignInButton()
        
    XCTAssertEqual(router.showHudCallsCount, 1)
    XCTAssertEqual(router.hideHudCallsCount, 1)
    XCTAssertEqual(router.showHomeControllerCallsCount, 1)
}
