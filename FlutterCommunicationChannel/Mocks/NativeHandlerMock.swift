//
//  NativeHandlerMock.swift
//  FlutterCommunicationChannel
//
//  Created by Ben Ogie on 27/08/2020.
//  Copyright © 2020 Ben Ogie. All rights reserved.
//

import Foundation
import FccAbstractCore

public class NativeHandlerMock: NativeHandler {
    
    let fcc = FccApiImpl.getInstance()
    var fallback = false
    
    
    public func approveTransaction(data: Any?) {
        if(fallback){
            fallback = false
            fcc.buildUI(parcel: TransactionRequest(authType: 102, data: AuthData(uiJsonProperties:  "  {\n" +
                                                                                    "    \"argGuiData\": {\n" +
                                                                                    "      \"transaction\": {\n" +
                                                                                    "        \"amount\": \"3000\",\n" +
                                                                                    "        \"currency\": \"\u{24}\"\n" +
                                                                                    "      },\n" +
                                                                                    "      \"fee\": {\n" +
                                                                                    "        \"amount\": \"3000\",\n" +
                                                                                    "        \"currency\": \"\u{24}\"\n" +
                                                                                    "      },\n" +
                                                                                    "      \"recipient\": {\n" +
                                                                                    "        \"name\": \"Joe Harrison\",\n" +
                                                                                    "        \"accountNumber\": \"234877840\"\n" +
                                                                                    "      }\n" +
                                                                                    "    },\n" +
                                                                                    "    \"argGuiHeader\": \"Approval required\",\n" +
                                                                                    "    \"argGuiText\": \"Do you authorize the transfer of the following amount to account number 1234.56.6789?\",\n" +
                                                                                    "    \"pinLength\": \"4\",\n" +
                                                                                    "    \"argGuiFlutterScreen\": {\n" +
                                                                                    "      \"progressScreen\": {\n" +
                                                                                    "        \"type\": \"scaffold\",\n" +
                                                                                    "        \"args\": {\n" +
                                                                                    "          \"appBar\": {\n" +
                                                                                    "            \"type\": \"app_bar\",\n" +
                                                                                    "            \"args\": {\n" +
                                                                                    "              \"title\": {\n" +
                                                                                    "                \"type\": \"text\",\n" +
                                                                                    "                \"args\": {\n" +
                                                                                    "                  \"text\": \"CircularProgressIndicator\"\n" +
                                                                                    "                }\n" +
                                                                                    "              }\n" +
                                                                                    "            }\n" +
                                                                                    "          },\n" +
                                                                                    "          \"body\": {\n" +
                                                                                    "            \"type\": \"center\",\n" +
                                                                                    "            \"child\": {\n" +
                                                                                    "              \"type\": \"column\",\n" +
                                                                                    "              \"args\": {\n" +
                                                                                    "                \"mainAxisSize\": \"min\"\n" +
                                                                                    "              },\n" +
                                                                                    "              \"children\": [\n" +
                                                                                    "                {\n" +
                                                                                    "                  \"type\": \"sized_box\",\n" +
                                                                                    "                  \"args\": {\n" +
                                                                                    "                    \"height\": 16\n" +
                                                                                    "                  }\n" +
                                                                                    "                },\n" +
                                                                                    "                {\n" +
                                                                                    "                  \"type\": \"circular_progress_indicator\",\n" +
                                                                                    "                  \"args\": {\n" +
                                                                                    "                    \"valueColor\": \"#0ff\"\n" +
                                                                                    "                  }\n" +
                                                                                    "                },\n" +
                                                                                    "                {\n" +
                                                                                    "                  \"type\": \"column\",\n" +
                                                                                    "                  \"args\": {\n" +
                                                                                    "                    \"mainAxisAlignment\": \"spaceBetween\"\n" +
                                                                                    "                  },\n" +
                                                                                    "                  \"children\": [\n" +
                                                                                    "                    {\n" +
                                                                                    "                      \"type\": \"padding\",\n" +
                                                                                    "                      \"args\": {\n" +
                                                                                    "                        \"padding\": [\n" +
                                                                                    "                          41,\n" +
                                                                                    "                          70,\n" +
                                                                                    "                          0,\n" +
                                                                                    "                          0\n" +
                                                                                    "                        ]\n" +
                                                                                    "                      },\n" +
                                                                                    "                      \"child\": {\n" +
                                                                                    "                        \"type\": \"column\",\n" +
                                                                                    "                        \"children\": [\n" +
                                                                                    "                          {\n" +
                                                                                    "                            \"type\": \"row\",\n" +
                                                                                    "                            \"children\": [\n" +
                                                                                    "                              {\n" +
                                                                                    "                                \"type\": \"text\",\n" +
                                                                                    "                                \"args\": {\n" +
                                                                                    "                                  \"text\": \"Confirm login\",\n" +
                                                                                    "                                  \"textAlign\": \"left\",\n" +
                                                                                    "                                  \"style\": {\n" +
                                                                                    "                                    \"color\": \"0xFFffbf03\",\n" +
                                                                                    "                                    \"fontWeight\": \"bold\",\n" +
                                                                                    "                                    \"fontSize\": 24.0\n" +
                                                                                    "                                  },\n" +
                                                                                    "                                  \"textDirection\": \"ltr\"\n" +
                                                                                    "                                }\n" +
                                                                                    "                              }\n" +
                                                                                    "                            ]\n" +
                                                                                    "                          }\n" +
                                                                                    "                        ]\n" +
                                                                                    "                      }\n" +
                                                                                    "                    }\n" +
                                                                                    "                  ]\n" +
                                                                                    "                }\n" +
                                                                                    "              ]\n" +
                                                                                    "            }\n" +
                                                                                    "          }\n" +
                                                                                    "        }\n" +
                                                                                    "      },\n" +
                                                                                    "      \"mainScreen\": {\n" +
                                                                                    "        \"type\": \"scaffold\",\n" +
                                                                                    "        \"args\": {\n" +
                                                                                    "          \"backgroundColor\": \"{{scaffoldBackgroundColor}}\",\n" +
                                                                                    "          \"body\": {\n" +
                                                                                    "            \"type\": \"stack\",\n" +
                                                                                    "            \"children\": [\n" +
                                                                                    "              {\n" +
                                                                                    "                \"type\": \"align\",\n" +
                                                                                    "                \"args\": {\n" +
                                                                                    "                  \"alignment\": \"topCenter\"\n" +
                                                                                    "                },\n" +
                                                                                    "                \"child\": {\n" +
                                                                                    "                  \"type\": \"padding\",\n" +
                                                                                    "                  \"args\": {\n" +
                                                                                    "                    \"padding\": [\n" +
                                                                                    "                      16,\n" +
                                                                                    "                      40,\n" +
                                                                                    "                      16,\n" +
                                                                                    "                      0\n" +
                                                                                    "                    ]\n" +
                                                                                    "                  },\n" +
                                                                                    "                  \"child\": {\n" +
                                                                                    "                    \"type\": \"column\",\n" +
                                                                                    "                    \"args\": {\n" +
                                                                                    "                      \"mainAxisSize\": \"min\",\n" +
                                                                                    "                      \"mainAxisAlignment\": \"start\",\n" +
                                                                                    "                      \"crossAxisAlignment\": \"start\"\n" +
                                                                                    "                    },\n" +
                                                                                    "                    \"children\": [\n" +
                                                                                    "                      {\n" +
                                                                                    "                        \"type\": \"row\",\n" +
                                                                                    "                        \"args\": {\n" +
                                                                                    "                          \"mainAxisAlignment\": \"spaceBetween\"\n" +
                                                                                    "                        },\n" +
                                                                                    "                        \"children\": [\n" +
                                                                                    "                          {\n" +
                                                                                    "                            \"type\": \"padding\",\n" +
                                                                                    "                            \"args\": {\n" +
                                                                                    "                              \"padding\": [\n" +
                                                                                    "                                0,\n" +
                                                                                    "                                15,\n" +
                                                                                    "                                0,\n" +
                                                                                    "                                0\n" +
                                                                                    "                              ]\n" +
                                                                                    "                            },\n" +
                                                                                    "                            \"child\": {\n" +
                                                                                    "                              \"type\": \"text\",\n" +
                                                                                    "                              \"args\": {\n" +
                                                                                    "                                \"text\": \"Cancel\",\n" +
                                                                                    "                                \"textAlign\": \"left\",\n" +
                                                                                    "                                \"style\": {\n" +
                                                                                    "                                  \"color\": \"0xFFffbf03\",\n" +
                                                                                    "                                  \"fontSize\": 16.0\n" +
                                                                                    "                                },\n" +
                                                                                    "                                \"textDirection\": \"ltr\"\n" +
                                                                                    "                              }\n" +
                                                                                    "                            }\n" +
                                                                                    "                          }\n" +
                                                                                    "                        ]\n" +
                                                                                    "                      },\n" +
                                                                                    "                      {\n" +
                                                                                    "                        \"type\": \"padding\",\n" +
                                                                                    "                        \"args\": {\n" +
                                                                                    "                          \"padding\": [\n" +
                                                                                    "                            0,\n" +
                                                                                    "                            10,\n" +
                                                                                    "                            0,\n" +
                                                                                    "                            0\n" +
                                                                                    "                          ]\n" +
                                                                                    "                        },\n" +
                                                                                    "                        \"child\": {\n" +
                                                                                    "                          \"type\": \"text\",\n" +
                                                                                    "                          \"args\": {\n" +
                                                                                    "                            \"text\": \"{{transactionHeader}}\",\n" +
                                                                                    "                            \"textAlign\": \"left\",\n" +
                                                                                    "                            \"style\": {\n" +
                                                                                    "                              \"color\": \"0xFFffbf03\",\n" +
                                                                                    "                              \"fontWeight\": \"bold\",\n" +
                                                                                    "                              \"fontSize\": 30.0\n" +
                                                                                    "                            },\n" +
                                                                                    "                            \"textDirection\": \"ltr\"\n" +
                                                                                    "                          }\n" +
                                                                                    "                        }\n" +
                                                                                    "                      },\n" +
                                                                                    "                      {\n" +
                                                                                    "                        \"type\": \"padding\",\n" +
                                                                                    "                        \"args\": {\n" +
                                                                                    "                          \"padding\": [\n" +
                                                                                    "                            0,\n" +
                                                                                    "                            10,\n" +
                                                                                    "                            0,\n" +
                                                                                    "                            0\n" +
                                                                                    "                          ]\n" +
                                                                                    "                        },\n" +
                                                                                    "                        \"child\": {\n" +
                                                                                    "                          \"type\": \"text\",\n" +
                                                                                    "                          \"args\": {\n" +
                                                                                    "                            \"text\": \"{{transactionInfo}}\",\n" +
                                                                                    "                            \"textAlign\": \"left\",\n" +
                                                                                    "                            \"style\": {\n" +
                                                                                    "                              \"color\": \"0xFFffbf03\",\n" +
                                                                                    "                              \"fontSize\": 12.0\n" +
                                                                                    "                            },\n" +
                                                                                    "                            \"textDirection\": \"ltr\"\n" +
                                                                                    "                          }\n" +
                                                                                    "                        }\n" +
                                                                                    "                      },\n" +
                                                                                    "                      {\n" +
                                                                                    "                        \"type\": \"padding\",\n" +
                                                                                    "                        \"args\": {\n" +
                                                                                    "                          \"padding\": [\n" +
                                                                                    "                            0,\n" +
                                                                                    "                            20,\n" +
                                                                                    "                            0,\n" +
                                                                                    "                            0\n" +
                                                                                    "                          ]\n" +
                                                                                    "                        },\n" +
                                                                                    "                        \"child\": {\n" +
                                                                                    "                          \"type\": \"column\",\n" +
                                                                                    "                          \"args\": {\n" +
                                                                                    "                            \"mainAxisAlignment\": \"start\",\n" +
                                                                                    "                            \"crossAxisAlignment\": \"start\"\n" +
                                                                                    "                          },\n" +
                                                                                    "                          \"children\": [\n" +
                                                                                    "                            {\n" +
                                                                                    "                              \"type\": \"padding\",\n" +
                                                                                    "                              \"args\": {\n" +
                                                                                    "                                \"padding\": [\n" +
                                                                                    "                                  0,\n" +
                                                                                    "                                  0,\n" +
                                                                                    "                                  0,\n" +
                                                                                    "                                  7\n" +
                                                                                    "                                ]\n" +
                                                                                    "                              },\n" +
                                                                                    "                              \"child\": {\n" +
                                                                                    "                                \"type\": \"text\",\n" +
                                                                                    "                                \"args\": {\n" +
                                                                                    "                                  \"text\": \"{{amountToDisplay}}\",\n" +
                                                                                    "                                  \"textAlign\": \"left\",\n" +
                                                                                    "                                  \"style\": {\n" +
                                                                                    "                                    \"color\": \"0xFF000000\",\n" +
                                                                                    "                                    \"fontSize\": 28,\n" +
                                                                                    "                                    \"fontWeight\": \"bold\"\n" +
                                                                                    "                                  },\n" +
                                                                                    "                                  \"textDirection\": \"ltr\"\n" +
                                                                                    "                                }\n" +
                                                                                    "                              }\n" +
                                                                                    "                            },\n" +
                                                                                    "                            {\n" +
                                                                                    "                              \"type\": \"text\",\n" +
                                                                                    "                              \"args\": {\n" +
                                                                                    "                                \"text\": \"{{feeToDisplay}}\",\n" +
                                                                                    "                                \"textAlign\": \"left\",\n" +
                                                                                    "                                \"style\": {\n" +
                                                                                    "                                  \"color\": \"0xFFc4c4c4\",\n" +
                                                                                    "                                  \"fontSize\": 11\n" +
                                                                                    "                                },\n" +
                                                                                    "                                \"textDirection\": \"ltr\"\n" +
                                                                                    "                              }\n" +
                                                                                    "                            }\n" +
                                                                                    "                          ]\n" +
                                                                                    "                        }\n" +
                                                                                    "                      }\n" +
                                                                                    "                    ]\n" +
                                                                                    "                  }\n" +
                                                                                    "                }\n" +
                                                                                    "              },\n" +
                                                                                    "              {\n" +
                                                                                    "                \"type\": \"align\",\n" +
                                                                                    "                \"args\": {\n" +
                                                                                    "                  \"alignment\": \"bottomCenter\"\n" +
                                                                                    "                },\n" +
                                                                                    "                \"child\": {\n" +
                                                                                    "                  \"type\": \"sized_box\",\n" +
                                                                                    "                  \"args\": {\n" +
                                                                                    "                    \"height\": 70\n" +
                                                                                    "                  },\n" +
                                                                                    "                  \"child\": {\n" +
                                                                                    "                    \"type\": \"padding\",\n" +
                                                                                    "                    \"args\": {\n" +
                                                                                    "                      \"padding\": [\n" +
                                                                                    "                        16,\n" +
                                                                                    "                        0,\n" +
                                                                                    "                        16,\n" +
                                                                                    "                        16\n" +
                                                                                    "                      ]\n" +
                                                                                    "                    },\n" +
                                                                                    "                    \"child\": {\n" +
                                                                                    "                      \"type\": \"simple_flat_button\",\n" +
                                                                                    "                      \"args\": {\n" +
                                                                                    "                        \"id\": \"approvalButton\",\n" +
                                                                                    "                        \"color\": \"#00C1FF\",\n" +
                                                                                    "                        \"value\": \"Confirm\",\n" +
                                                                                    "                        \"shadowColor\": \"#757575\",\n" +
                                                                                    "                        \"widgetActionHandler\": \"##touchableWidgetActionHandler()##\"\n" +
                                                                                    "                      }\n" +
                                                                                    "                    }\n" +
                                                                                    "                  }\n" +
                                                                                    "                }\n" +
                                                                                    "              }\n" +
                                                                                    "            ]\n" +
                                                                                    "          }\n" +
                                                                                    "        }\n" +
                                                                                    "      }\n" +
                                                                                    "    }\n" +
                                                                                    "  }", useFallbackScreen: true)))
            return
            
        }
        fcc.hideUI()
        print("Data from Flutter side: \(String(describing: data))")
    }
    
    public func declineTransaction() {
        fcc.hideUI()
    }
    
    public func waterMarkScreen(bitmap: [UInt8]) {
        fcc.displayUI(parcel: DisplayArtifact(artifact: bitmap))
    }
    
    public func onScreenReady() {
        
        let data = TransactionRequest(authType: 105, data: AuthData(uiJsonProperties: "  {\n" +
                                                                        "    \"argGuiData\": {\n" +
                                                                        "      \"transaction\": {\n" +
                                                                        "        \"amount\": \"3000\",\n" +
                                                                        "        \"currency\": \"\u{24}\"\n" +
                                                                        "      },\n" +
                                                                        "      \"fee\": {\n" +
                                                                        "        \"amount\": \"3000\",\n" +
                                                                        "        \"currency\": \"\u{24}\"\n" +
                                                                        "      },\n" +
                                                                        "      \"recipient\": {\n" +
                                                                        "        \"name\": \"Joe Harrison\",\n" +
                                                                        "        \"accountNumber\": \"234877840\"\n" +
                                                                        "      }\n" +
                                                                        "    },\n" +
                                                                        "    \"argGuiHeader\": \"Approval required\",\n" +
                                                                        "    \"argGuiText\": \"Do you authorize the transfer of the following amount to account number 1234.56.6789?\",\n" +
                                                                        "    \"pinLength\": \"4\",\n" +
                                                                        "    \"argGuiFlutterScreen\": {\n" +
                                                                        "      \"progressScreen\": {\n" +
                                                                        "        \"type\": \"scaffold\",\n" +
                                                                        "        \"args\": {\n" +
                                                                        "          \"appBar\": {\n" +
                                                                        "            \"type\": \"app_bar\",\n" +
                                                                        "            \"args\": {\n" +
                                                                        "              \"title\": {\n" +
                                                                        "                \"type\": \"text\",\n" +
                                                                        "                \"args\": {\n" +
                                                                        "                  \"text\": \"CircularProgressIndicator\"\n" +
                                                                        "                }\n" +
                                                                        "              }\n" +
                                                                        "            }\n" +
                                                                        "          },\n" +
                                                                        "          \"body\": {\n" +
                                                                        "            \"type\": \"center\",\n" +
                                                                        "            \"child\": {\n" +
                                                                        "              \"type\": \"column\",\n" +
                                                                        "              \"args\": {\n" +
                                                                        "                \"mainAxisSize\": \"min\"\n" +
                                                                        "              },\n" +
                                                                        "              \"children\": [\n" +
                                                                        "                {\n" +
                                                                        "                  \"type\": \"sized_box\",\n" +
                                                                        "                  \"args\": {\n" +
                                                                        "                    \"height\": 16\n" +
                                                                        "                  }\n" +
                                                                        "                },\n" +
                                                                        "                {\n" +
                                                                        "                  \"type\": \"circular_progress_indicator\",\n" +
                                                                        "                  \"args\": {\n" +
                                                                        "                    \"valueColor\": \"#0ff\"\n" +
                                                                        "                  }\n" +
                                                                        "                },\n" +
                                                                        "                {\n" +
                                                                        "                  \"type\": \"column\",\n" +
                                                                        "                  \"args\": {\n" +
                                                                        "                    \"mainAxisAlignment\": \"spaceBetween\"\n" +
                                                                        "                  },\n" +
                                                                        "                  \"children\": [\n" +
                                                                        "                    {\n" +
                                                                        "                      \"type\": \"padding\",\n" +
                                                                        "                      \"args\": {\n" +
                                                                        "                        \"padding\": [\n" +
                                                                        "                          41,\n" +
                                                                        "                          70,\n" +
                                                                        "                          0,\n" +
                                                                        "                          0\n" +
                                                                        "                        ]\n" +
                                                                        "                      },\n" +
                                                                        "                      \"child\": {\n" +
                                                                        "                        \"type\": \"column\",\n" +
                                                                        "                        \"children\": [\n" +
                                                                        "                          {\n" +
                                                                        "                            \"type\": \"row\",\n" +
                                                                        "                            \"children\": [\n" +
                                                                        "                              {\n" +
                                                                        "                                \"type\": \"text\",\n" +
                                                                        "                                \"args\": {\n" +
                                                                        "                                  \"text\": \"Confirm login\",\n" +
                                                                        "                                  \"textAlign\": \"left\",\n" +
                                                                        "                                  \"style\": {\n" +
                                                                        "                                    \"color\": \"0xFFffbf03\",\n" +
                                                                        "                                    \"fontWeight\": \"bold\",\n" +
                                                                        "                                    \"fontSize\": 24.0\n" +
                                                                        "                                  },\n" +
                                                                        "                                  \"textDirection\": \"ltr\"\n" +
                                                                        "                                }\n" +
                                                                        "                              }\n" +
                                                                        "                            ]\n" +
                                                                        "                          }\n" +
                                                                        "                        ]\n" +
                                                                        "                      }\n" +
                                                                        "                    }\n" +
                                                                        "                  ]\n" +
                                                                        "                }\n" +
                                                                        "              ]\n" +
                                                                        "            }\n" +
                                                                        "          }\n" +
                                                                        "        }\n" +
                                                                        "      },\n" +
                                                                        "      \"mainScreen\": {\n" +
                                                                        "        \"type\": \"scaffold\",\n" +
                                                                        "        \"args\": {\n" +
                                                                        "          \"backgroundColor\": \"{{scaffoldBackgroundColor}}\",\n" +
                                                                        "          \"body\": {\n" +
                                                                        "            \"type\": \"stack\",\n" +
                                                                        "            \"children\": [\n" +
                                                                        "              {\n" +
                                                                        "                \"type\": \"align\",\n" +
                                                                        "                \"args\": {\n" +
                                                                        "                  \"alignment\": \"topCenter\"\n" +
                                                                        "                },\n" +
                                                                        "                \"child\": {\n" +
                                                                        "                  \"type\": \"padding\",\n" +
                                                                        "                  \"args\": {\n" +
                                                                        "                    \"padding\": [\n" +
                                                                        "                      16,\n" +
                                                                        "                      40,\n" +
                                                                        "                      16,\n" +
                                                                        "                      0\n" +
                                                                        "                    ]\n" +
                                                                        "                  },\n" +
                                                                        "                  \"child\": {\n" +
                                                                        "                    \"type\": \"column\",\n" +
                                                                        "                    \"args\": {\n" +
                                                                        "                      \"mainAxisSize\": \"min\",\n" +
                                                                        "                      \"mainAxisAlignment\": \"start\",\n" +
                                                                        "                      \"crossAxisAlignment\": \"start\"\n" +
                                                                        "                    },\n" +
                                                                        "                    \"children\": [\n" +
                                                                        "                      {\n" +
                                                                        "                        \"type\": \"row\",\n" +
                                                                        "                        \"args\": {\n" +
                                                                        "                          \"mainAxisAlignment\": \"spaceBetween\"\n" +
                                                                        "                        },\n" +
                                                                        "                        \"children\": [\n" +
                                                                        "                          {\n" +
                                                                        "                            \"type\": \"padding\",\n" +
                                                                        "                            \"args\": {\n" +
                                                                        "                              \"padding\": [\n" +
                                                                        "                                0,\n" +
                                                                        "                                15,\n" +
                                                                        "                                0,\n" +
                                                                        "                                0\n" +
                                                                        "                              ]\n" +
                                                                        "                            },\n" +
                                                                        "                            \"child\": {\n" +
                                                                        "                              \"type\": \"text\",\n" +
                                                                        "                              \"args\": {\n" +
                                                                        "                                \"text\": \"Cancel\",\n" +
                                                                        "                                \"textAlign\": \"left\",\n" +
                                                                        "                                \"style\": {\n" +
                                                                        "                                  \"color\": \"0xFFffbf03\",\n" +
                                                                        "                                  \"fontSize\": 16.0\n" +
                                                                        "                                },\n" +
                                                                        "                                \"textDirection\": \"ltr\"\n" +
                                                                        "                              }\n" +
                                                                        "                            }\n" +
                                                                        "                          }\n" +
                                                                        "                        ]\n" +
                                                                        "                      },\n" +
                                                                        "                      {\n" +
                                                                        "                        \"type\": \"padding\",\n" +
                                                                        "                        \"args\": {\n" +
                                                                        "                          \"padding\": [\n" +
                                                                        "                            0,\n" +
                                                                        "                            10,\n" +
                                                                        "                            0,\n" +
                                                                        "                            0\n" +
                                                                        "                          ]\n" +
                                                                        "                        },\n" +
                                                                        "                        \"child\": {\n" +
                                                                        "                          \"type\": \"text\",\n" +
                                                                        "                          \"args\": {\n" +
                                                                        "                            \"text\": \"{{transactionHeader}}\",\n" +
                                                                        "                            \"textAlign\": \"left\",\n" +
                                                                        "                            \"style\": {\n" +
                                                                        "                              \"color\": \"0xFFffbf03\",\n" +
                                                                        "                              \"fontWeight\": \"bold\",\n" +
                                                                        "                              \"fontSize\": 30.0\n" +
                                                                        "                            },\n" +
                                                                        "                            \"textDirection\": \"ltr\"\n" +
                                                                        "                          }\n" +
                                                                        "                        }\n" +
                                                                        "                      },\n" +
                                                                        "                      {\n" +
                                                                        "                        \"type\": \"padding\",\n" +
                                                                        "                        \"args\": {\n" +
                                                                        "                          \"padding\": [\n" +
                                                                        "                            0,\n" +
                                                                        "                            10,\n" +
                                                                        "                            0,\n" +
                                                                        "                            0\n" +
                                                                        "                          ]\n" +
                                                                        "                        },\n" +
                                                                        "                        \"child\": {\n" +
                                                                        "                          \"type\": \"text\",\n" +
                                                                        "                          \"args\": {\n" +
                                                                        "                            \"text\": \"{{transactionInfo}}\",\n" +
                                                                        "                            \"textAlign\": \"left\",\n" +
                                                                        "                            \"style\": {\n" +
                                                                        "                              \"color\": \"0xFFffbf03\",\n" +
                                                                        "                              \"fontSize\": 12.0\n" +
                                                                        "                            },\n" +
                                                                        "                            \"textDirection\": \"ltr\"\n" +
                                                                        "                          }\n" +
                                                                        "                        }\n" +
                                                                        "                      },\n" +
                                                                        "                      {\n" +
                                                                        "                        \"type\": \"padding\",\n" +
                                                                        "                        \"args\": {\n" +
                                                                        "                          \"padding\": [\n" +
                                                                        "                            0,\n" +
                                                                        "                            20,\n" +
                                                                        "                            0,\n" +
                                                                        "                            0\n" +
                                                                        "                          ]\n" +
                                                                        "                        },\n" +
                                                                        "                        \"child\": {\n" +
                                                                        "                          \"type\": \"column\",\n" +
                                                                        "                          \"args\": {\n" +
                                                                        "                            \"mainAxisAlignment\": \"start\",\n" +
                                                                        "                            \"crossAxisAlignment\": \"start\"\n" +
                                                                        "                          },\n" +
                                                                        "                          \"children\": [\n" +
                                                                        "                            {\n" +
                                                                        "                              \"type\": \"padding\",\n" +
                                                                        "                              \"args\": {\n" +
                                                                        "                                \"padding\": [\n" +
                                                                        "                                  0,\n" +
                                                                        "                                  0,\n" +
                                                                        "                                  0,\n" +
                                                                        "                                  7\n" +
                                                                        "                                ]\n" +
                                                                        "                              },\n" +
                                                                        "                              \"child\": {\n" +
                                                                        "                                \"type\": \"text\",\n" +
                                                                        "                                \"args\": {\n" +
                                                                        "                                  \"text\": \"{{amountToDisplay}}\",\n" +
                                                                        "                                  \"textAlign\": \"left\",\n" +
                                                                        "                                  \"style\": {\n" +
                                                                        "                                    \"color\": \"0xFF000000\",\n" +
                                                                        "                                    \"fontSize\": 28,\n" +
                                                                        "                                    \"fontWeight\": \"bold\"\n" +
                                                                        "                                  },\n" +
                                                                        "                                  \"textDirection\": \"ltr\"\n" +
                                                                        "                                }\n" +
                                                                        "                              }\n" +
                                                                        "                            },\n" +
                                                                        "                            {\n" +
                                                                        "                              \"type\": \"text\",\n" +
                                                                        "                              \"args\": {\n" +
                                                                        "                                \"text\": \"{{feeToDisplay}}\",\n" +
                                                                        "                                \"textAlign\": \"left\",\n" +
                                                                        "                                \"style\": {\n" +
                                                                        "                                  \"color\": \"0xFFc4c4c4\",\n" +
                                                                        "                                  \"fontSize\": 11\n" +
                                                                        "                                },\n" +
                                                                        "                                \"textDirection\": \"ltr\"\n" +
                                                                        "                              }\n" +
                                                                        "                            }\n" +
                                                                        "                          ]\n" +
                                                                        "                        }\n" +
                                                                        "                      }\n" +
                                                                        "                    ]\n" +
                                                                        "                  }\n" +
                                                                        "                }\n" +
                                                                        "              },\n" +
                                                                        "              {\n" +
                                                                        "                \"type\": \"align\",\n" +
                                                                        "                \"args\": {\n" +
                                                                        "                  \"alignment\": \"bottomCenter\"\n" +
                                                                        "                },\n" +
                                                                        "                \"child\": {\n" +
                                                                        "                  \"type\": \"sized_box\",\n" +
                                                                        "                  \"args\": {\n" +
                                                                        "                    \"height\": 70\n" +
                                                                        "                  },\n" +
                                                                        "                  \"child\": {\n" +
                                                                        "                    \"type\": \"padding\",\n" +
                                                                        "                    \"args\": {\n" +
                                                                        "                      \"padding\": [\n" +
                                                                        "                        16,\n" +
                                                                        "                        0,\n" +
                                                                        "                        16,\n" +
                                                                        "                        16\n" +
                                                                        "                      ]\n" +
                                                                        "                    },\n" +
                                                                        "                    \"child\": {\n" +
                                                                        "                      \"type\": \"simple_flat_button\",\n" +
                                                                        "                      \"args\": {\n" +
                                                                        "                        \"id\": \"approvalButton\",\n" +
                                                                        "                        \"color\": \"#00C1FF\",\n" +
                                                                        "                        \"value\": \"Confirm\",\n" +
                                                                        "                        \"shadowColor\": \"#757575\",\n" +
                                                                        "                        \"widgetActionHandler\": \"##touchableWidgetActionHandler()##\"\n" +
                                                                        "                      }\n" +
                                                                        "                    }\n" +
                                                                        "                  }\n" +
                                                                        "                }\n" +
                                                                        "              }\n" +
                                                                        "            ]\n" +
                                                                        "          }\n" +
                                                                        "        }\n" +
                                                                        "      }\n" +
                                                                        "    }\n" +
                                                                        "  }", useFallbackScreen: false))
        fcc.buildUI(parcel: data)
    }
    
    public func detectOverlay() {
        print("Detecting overlay")
    }
    
    public func onBackButtonPressed() {
        print("Back button pressed")
    }
    
    public func invalidMethodCall(methodName: String) {
        print("Invalid method called")
    }
    
    public init(){}
}
